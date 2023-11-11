# -*- coding: utf-8 -*-

"""
/***************************************************************************
 Qveg
                                 A QGIS plugin
 Loads Queensland Vegetation Management (QVM) map data from the Queensland 
 government feature server based on a property (lot plan) search.
                              -------------------
        begin                : 2020-05-06
        updated              : 2021-04-25
        updated              : 2023-07-15
        updated              : 2023-11-12
        copyright            : (C) 2020 by Otto Pattemore and Gary Pattemore
        email                : variatursoftware .at. gmail .dot. com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This work is licensed under the Creative Commons Attribution 4.0      *
 *   International License. To view a copy of this license,                *
 *   visit http://creativecommons.org/licenses/by/4.0/ or                  *
 *   send a letter to Creative Commons,                                    *
 *   PO Box 1866, Mountain View, CA 94042, USA.                            *
 *                                                                         *
 ***************************************************************************/
"""

__author__ = 'Otto Pattemore and Gary Pattemore'
__date__ = '2023-11-12'
__copyright__ = '(C) 2020 by Otto Pattemore and Gary Pattemore'

# This will get replaced with a git SHA1 when you do a git archive

__revision__ = '$Format:%H$'

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import *
from qgis.utils import iface
import re
import os
import processing
from PyQt5.QtGui import QIcon
import time
import datetime
import json
from .cadastral import *
from .nr_collector import *
from .query import *
#
class QshowreAlgorithm(QgsProcessingAlgorithm):
    INPUT = 'INPUT'
    LOADEXACT = 'LOADEXACT'
    LOADPRIMARY = 'LOADPRIMARY'
    OUTPUTDIR = 'OUTPUTDIR'

    def initAlgorithm(self, config):
        self.addParameter(
            QgsProcessingParameterString(
                self.INPUT,
                self.tr('Search for Regional Ecosystem(s) e.g. 6.5.1 11.9.2 [will ignore invalid REs]')
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADEXACT,
                self.tr('Exact search: e.g. search for 11.9.4 or 11.9.4a, but not both'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADPRIMARY,
                self.tr('Restrict search to primary RE only'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterFolderDestination(
                self.OUTPUTDIR,
                self.tr("Directory to save output files")
            )
        )
#
    def LoadRELayer(self,res,outputDIR,standardCRS,context,feedback,PrimaryOnly,Exact):
        #make short form of CRS for web query
        standardCRSshort = standardCRS[len("EPSG:"):]
        #Build SQL query for server
        if Exact == True:
            # Extact Search
            RESQLQuery = "RE1+LIKE+'" + res[0] + "'"
            if PrimaryOnly == False:
                for i in range(2,6): RESQLQuery = RESQLQuery + "+OR+RE"+str(i)+"+LIKE+'"+res[0]+"'"
            # If more than 1 RE was requested
            for res3 in res[1:]:
                if PrimaryOnly == True: 
                    RESQLQuery = RESQLQuery + "+OR+RE1+LIKE+'"+res3+"'"
                else:
                    for i in range(1,6): RESQLQuery = RESQLQuery + "+OR+RE"+str(i)+"+LIKE+'"+res3+"'"
            feedback.setProgressText("Exact search for "+','.join(res))
            if PrimaryOnly == True:
                feedback.setProgressText("but only searching for primary occurrences")
        else:
            # Non-Exact search: remove letters from the query (res2)
            res2_string = ','.join(res)
            res2 = re.sub("[^0-9.-]+", ',', res2_string).split(',')
            res2 = list(filter(None, res2))
            rll="RE_LABEL+LIKE+'"
            if PrimaryOnly == False: 
                RESQLQuery = rll+res2[0]+"'"+"+OR+"+rll+res2[0]+"/%'+OR+"+rll+"%/"+res[0]+"/%'+OR+"+rll+"%/"+res[0]+"'"
            if PrimaryOnly == True:
                RESQLQuery = "RE1+LIKE+'"+res[0]+"%'"
            # If more than 1 RE was requested
            for i in res2[1:]:
                if PrimaryOnly == False:
                    RESQLQuery = RESQLQuery+"+OR+"+rll+res2[0]+"'"+"+OR+"+rll+i+"/%'+OR+"+rll+"%/"+i+"/%'+OR+"+rll+"%/"+i+"'"
                if PrimaryOnly == True:
                    RESQLQuery = RESQLQuery + "+OR+RE1+LIKE+'"+i+"%'"
            feedback.setProgressText("Non-exact search for "+','.join(res))
            if PrimaryOnly == True:
                feedback.setProgressText("but only searching for primary occurrences")
        #
        feedback.setProgress(10)
        #
        # Get list of polygon IDs
        post = None
        post = dict(    service1 = "Biota/", 
                        service2 = "VegetationManagement/",
                        serviceType = "MapServer/",
                        serviceNumber = str(134),
                        returnIdsOnly = "true",
                        f = 'json',
                        where = RESQLQuery,
                        returnGeometry = 'false'
                        )
        objectIDs = GetGEOJSON(BuildQuery(post,context,feedback),context,feedback)
        if objectIDs == None:
            feedback.reportError("Problem communicating with server [code E1.1]", True)
            return None
        objectID_list = json.loads(objectIDs)["objectIds"]
        # Get feature count
        if objectID_list == None:
            feedback.reportError("No objects to retrieve. Is the RE code valid? Exiting...")
            return None
        objectCount = len(objectID_list)
        feedback.setProgressText("Getting "+str(objectCount)+" polygons")
        feedback.setProgress(20)
        #
        #Get RE polygon(s)
        baseName = '/RegionalEcosystem'
        layerName = 'Regional ecosystem (regulated)'
        position=0
        GeoType = "MultiPolygon"
        #Build empty vector layer
        RElayer = QgsVectorLayer(GeoType, layerName, "memory")
        feedback.setProgress(25)
        #Get 500 features at a time - server limit is 2000 per query
        bundleSize = 500
        while position*bundleSize < objectCount:
            sublist = objectID_list[position*bundleSize:position * bundleSize + (bundleSize-1)]
            sublist = ",".join(map(str,sublist))
            post = None
            post = dict(    service1 = "Biota/", 
                            service2 = "VegetationManagement/",
                            serviceType = "MapServer/",
                            serviceNumber = str(134),
                            f = 'geojson',
                            objectIds = sublist,
                            outSR = standardCRSshort
                            )
            sublistQueryResult = GetGEOJSON(BuildQuery(post,context,feedback),context,feedback)
            if sublistQueryResult == None:
                feedback.reportError("Problem communicating with server [code E1.2]", True)
                return None
            tempLayer = QgsVectorLayer(sublistQueryResult, layerName, "ogr")
            #
            #Check if valid geometry is returned
            ValidGeometry = True
            if tempLayer.featureCount() < 1:
                ValidGeometry = False
            else:
                #Buffer layer to clean-up inconsistencies in returned vector info -- uses buffer distance = 0
                if QgsWkbTypes.geometryDisplayString(tempLayer.geometryType()) == "Polygon":
                    params = {
                        'INPUT' : tempLayer,
                        'DISTANCE' : 0,
                        'OUTPUT' : "memory:"
                    }
                    tempLayer = processing.run('native:buffer', params)["OUTPUT"]
                #
                # Merging layer with Master copy if the clipped layer still has features
                if tempLayer.featureCount() > 0:
                    params = {
                        'LAYERS' : [tempLayer,RElayer],
                        'OUTPUT' : "memory:"
                    }
                    RElayer = processing.run('native:mergevectorlayers', params)["OUTPUT"]
            #End Loop
            #
            feedback.setProgress(25+(position))
            position = position + 1
            if position*bundleSize < objectCount: feedback.setProgressText("Got "+str(position*bundleSize)+" of "+str(objectCount)+" polygons")
        #Write layer to file and reload
        TimeString = str(datetime.datetime.now()).replace(':','-').replace(':','-').replace('.','-').replace(' ','-')
        #Save as GeoPackage
        QgsVectorFileWriter.writeAsVectorFormat(RElayer,outputDIR+baseName+TimeString+".gpkg",'utf-8',QgsCoordinateReferenceSystem(standardCRS))
        # Reload layer
        RElayer = QgsVectorLayer(outputDIR+baseName+TimeString+".gpkg",layerName,"ogr")
        if not RElayer.isValid():
                #print("Layer failed to load!")
                feedback.reportError("Failed to load layer!", True)
                return None
        #
        feedback.setProgress(95)
        #RElayer.setName(layerName)
        # Add styling for REs
        StyleFileName = "LayerStyles/SupportingMap.qml"
        RElayer.loadNamedStyle(resolve(StyleFileName))
        #write style to geopackage
        RElayer.saveStyleToDatabase(name="Qveg-default", description=StyleFileName, useAsDefault=True, uiFileContent="")
        RElayer.triggerRepaint()
        return RElayer
    def processAlgorithm(self, parameters, context, feedback):
        # Set the standard CRS to GDA2020 (EPSG:7844)
        standardCRS = "EPSG:7844"
        #Parse the RE numbers
        res = re.sub("[^0-9a-zA-Z.-]+", ',', self.parameterAsString(parameters,self.INPUT,context).lower()).split(',')
        res_message = "Regional ecosystem(s):"+",".join(res)
        outputDIR = self.parameterAsFileOutput(parameters,self.OUTPUTDIR,context)
        PrimaryOnly = self.parameterAsBoolean(parameters,self.LOADPRIMARY,context)
        Exact = self.parameterAsBoolean(parameters,self.LOADEXACT,context)
        feedback.setProgress(5)
        feedback.setProgressText(res_message)  
        # The following lines workaround an apparent QGIS bug where a temporary directory isn't actually made.
        try:
            os.mkdir(outputDIR)
        except FileExistsError as e:
            pass
        #Get RE polygon(s)
        RElayer = self.LoadRELayer(res,outputDIR,standardCRS,context,feedback,PrimaryOnly,Exact)
        #
        if RElayer == None or not RElayer.isValid() or RElayer.featureCount() < 1:
            feedback.reportError("Failed to load REs! Invalid REs?", True)
            return {}
        # Load layer to canvas
        project = QgsProject.instance()
        project.addMapLayer(RElayer, False)
        layerTree = iface.layerTreeCanvasBridge().rootGroup()
        layerTree.insertChildNode(0, QgsLayerTreeLayer(RElayer))
        feedback.setProgress(99)
        #
        #Zoom to extent
        canvas = iface.mapCanvas()
        canvasCRS = QgsCoordinateReferenceSystem(canvas.mapSettings().destinationCrs().authid())
        reCRS = QgsCoordinateReferenceSystem(RElayer.crs())
        xform = QgsCoordinateTransform(reCRS, canvasCRS, project)
        canvas.setExtent(xform.transform(RElayer.extent()))
        #
        #

        #
        feedback.setProgress(100)
        #
        return {}
    
    def name(self):
        """
        Returns the algorithm name, used for identifying the algorithm. This
        string should be fixed for the algorithm, and must not be localised.
        The name should be unique within each provider. Names should contain
        lowercase alphanumeric characters only and no spaces or other
        formatting characters.
        """
        return 'Regional ecosystem search'

    def displayName(self):
        """
        Returns the translated algorithm name, which should be used for any
        user-visible display of the algorithm name.
        """
        return self.tr(self.name())

    def group(self):
        """
        Returns the name of the group this algorithm belongs to. This string
        should be localised.
        """
        return self.tr(self.groupId())

    def groupId(self):
        """
        Returns the unique ID of the group this algorithm belongs to. This
        string should be fixed for the algorithm, and must not be localised.
        The group id should be unique within each provider. Group id should
        contain lowercase alphanumeric characters only and no spaces or other
        formatting characters.
        """
        return 'Vegetation Management'

    def tr(self, string):
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return QshowreAlgorithm()
    
    def icon(self):
        return QIcon(resolve("search.png"))
    
    def flags(self):
        return super().flags() | QgsProcessingAlgorithm.FlagNoThreading
    #