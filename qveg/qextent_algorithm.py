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
        copyright            : (C) 2020 by Otto Pattemore and Gary Pattemore
        email                : pattemore .dot. software .at. gmail .dot. com
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
__date__ = '2020-05-06'
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
from PyQt5.QtWidgets import QMessageBox
from .cadastral import *
from .nr_collector import *
from .query import *
#
class QextentAlgorithm(QgsProcessingAlgorithm):
    #INPUT = 'INPUT'
    OUTPUTDIR = 'OUTPUTDIR'
    LOADTENURE = "LOADTENURE"
    LOADSUPPORTINGMAP = "LOADSUPPORTINGMAP"
    LOADPRECLEARMAP = "LOADPRECLEARMAP"
    LOADRVM = "LOADRVM"
    LOADPMAV = "LOADPMAV"
    LOADESSHAB = "LOADESSHAB"
    LOADWETLANDS = "LOADWETLANDS"
    LOADVMWATER8 = "LOADVMWATER8"
    LOADVMWATER7 = "LOADVMWATER7"
    LOADPPTM = "LOADPPTM"
    LOADKPA = "LOADKPA"
    LOADKHA = "LOADKHA"
    LOADKHAL = "LOADKHAL"
    LOADKRA = "LOADKRA"
    LOADSLATS = "LOADSLATS"
    def initAlgorithm(self, config):
        #self.addParameter(
        #    QgsProcessingParameterNumber(
        #        self.INPUT,
        #        self.tr('Set a maximum object number to download')
        #    )
        #)
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADTENURE,
                self.tr('Tenure'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADSUPPORTINGMAP,
                self.tr('Regional ecosystem map, supporting the RVM map (VMA s20A)'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADPRECLEARMAP,
                self.tr('Pre-clear regional ecosystem map, using RE classes of VMA s22LA-LC (used for VM purposes, eg. determining exchange areas)'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterFolderDestination(
                self.OUTPUTDIR,
                self.tr("Directory to save output files")
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADRVM,
                self.tr('RVM map (Regulated Vegetation Management map, VMA s20A)'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADPMAV,
                self.tr('PMAV (Property Map of Assessable Vegetation, VMA s20AK)'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADESSHAB,
                self.tr('Essential Habitat (VMA s20AC)'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADWETLANDS,
                self.tr('Wetlands (VMA, s20AA)'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADVMWATER8,
                self.tr('VM Water courses 1:25000 SEQ (VMA s20AB)'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADVMWATER7,
                self.tr('VM Water courses 1:100,000 or 1:250,000 (VMA s20AB)'),
                False
            )
        )           
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADPPTM,
                self.tr('Protected Plant Trigger Map'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADKPA,
                self.tr('Koala Priority Area'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADKHA,
                self.tr('Core Koala Habitat Area'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADKHAL,
                self.tr('Locally refined Koala Habitat Area - used by local govt'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADKRA,
                self.tr('Koala Restoration Area'),
                False
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADSLATS,
                self.tr('Statewide Landcover and Trees Study (SLATS) - 1988-2018'),
                False
            )
        )
    def getNRlayer(self,RC,GrandTotal,post,layerInfo,context,feedback):
        if RC == 0:
            feedback.setProgressText(layerInfo['layername']+" - calculating size...")
            post.update(dict(   geometry = layerInfo['extent'],
                                objectIds = ''
                                ))
            objectCount = GetObjectCount(post,layerInfo,context,feedback)
            if objectCount > 0:
                feedback.setProgressText("Object count = "+str(objectCount))
                GrandTotal = GrandTotal + objectCount
        else: 
            feedback.setProgressText(layerInfo['layername']+" -- loading...")
            LoadNaturalResourceLayer(post,layerInfo,context,feedback)
        feedback.setProgressText("-------")
        return GrandTotal
    def processAlgorithm(self, parameters, context, feedback):
        # Set the standard CRS to GDA2020 (EPSG:7844)
        standardCRS = "EPSG:7844"
        #  
        loadTenure = self.parameterAsBool(parameters,self.LOADTENURE,context)
        loadSupportingMap = self.parameterAsBool(parameters,self.LOADSUPPORTINGMAP,context)
        loadPreClearMap = self.parameterAsBool(parameters,self.LOADPRECLEARMAP,context)
        loadRVM = self.parameterAsBool(parameters,self.LOADRVM,context)
        loadPMAV = self.parameterAsBool(parameters,self.LOADPMAV,context)
        loadEssHab = self.parameterAsBool(parameters,self.LOADESSHAB,context)
        loadPPTM = self.parameterAsBool(parameters,self.LOADPPTM,context)
        loadWetlands = self.parameterAsBool(parameters,self.LOADWETLANDS,context)
        loadVMWater8 = self.parameterAsBool(parameters,self.LOADVMWATER8,context)
        loadVMWater7 = self.parameterAsBool(parameters,self.LOADVMWATER7,context)
        loadKoalaPA = self.parameterAsBool(parameters,self.LOADKPA,context)
        loadKoalaHA = self.parameterAsBool(parameters,self.LOADKHA,context)
        loadKoalaRA = self.parameterAsBool(parameters,self.LOADKRA,context)
        loadKoalaHAL = self.parameterAsBool(parameters,self.LOADKHAL,context)
        loadSLATS = self.parameterAsBool(parameters,self.LOADSLATS,context)
        outputDIR = self.parameterAsFileOutput(parameters,self.OUTPUTDIR,context)
        feedback.setProgress(1)
        # The following lines workaround an apparent QGIS bug where a temporary directory isn't actually made.
        try:
            os.mkdir(outputDIR)
        except FileExistsError as e:
            pass
        #
        feedback.setProgress(5)
        #
        # Calculate area of extent
        #
        project = QgsProject.instance()
        canvas = iface.mapCanvas()
        canvasCRS = QgsCoordinateReferenceSystem(canvas.mapSettings().destinationCrs().authid())

        # get extent of canvas
        canvasExtent = canvas.extent() # a QgsRectangle 
        #print("canvasExtent : ",canvasExtent)

        # convert extent to a  geometry
        canvasBorder = QgsGeometry().fromRect(canvasExtent)  # a QgsGeometry
        #print("canvasBorder : ",canvasBorder)

        # Transform canvas extent geometry to the standard CRS (EPSG:7844)
        xform = QgsCoordinateTransform(canvasCRS, QgsCoordinateReferenceSystem(standardCRS), project)
        canvasBorder.transform(xform)
        # now make a QgsRectangle 
        extent_in_standardCRS= canvasBorder.boundingBox()

        #measure area
        QgsDistanceArea().setSourceCrs(QgsCoordinateReferenceSystem(standardCRS),project.transformContext())
        QgsDistanceArea().setEllipsoid(project.ellipsoid())
        area = QgsDistanceArea().measureArea(canvasBorder)
        area_in_hectares = QgsDistanceArea().convertAreaMeasurement(area,QgsUnitTypes.AreaHectares)
        #print("canvasBorder area : ",area)
        #print("canvasBorder Hectares : ",area_in_hectares)
        #print("Area units",QgsUnitTypes().encodeUnit(QgsDistanceArea().areaUnits()))


        # Build geometry query string
        xmin = str(extent_in_standardCRS.xMinimum())
        ymin = str(extent_in_standardCRS.yMinimum())
        xmax = str(extent_in_standardCRS.xMaximum())
        ymax = str(extent_in_standardCRS.yMaximum())
        ExtentString = xmin+","+ymin+","+xmax+","+ymax
        #print("Extent in stdCRS",ExtentString)
        #
        # Exit if too large
        if area_in_hectares > 10000000:
            feedback.reportError("Extent is too large ("+str(round(area_in_hectares))+" ha) - exiting...", True)
            return {}
        ##
        TimeString = str(datetime.datetime.now()).replace(':','-').replace(':','-').replace('.','-').replace(' ','-')
        # Initialise dictionaries
        post = {}
        layerInfo = dict(   outputDIR = outputDIR,
                            standardCRS = standardCRS,
                            canvasCRS = canvasCRS,
                            gpkg_basename = 'Qveg-ExtentSearch_'+TimeString,
                            extent = ExtentString,
                            searchType = 'extentstring'
                            )
        # Set object count warning value
        MaxObjects = 20000
        GrandTotal = 0
        #QT messagebox return values
        no = 65536
        yes = 16384
        # set to first return count of object only 
        #
        for RC in range (2): # RC= Return Count --- if RC=0 loop will count the required objects only -- to test if query is reasonable. 
            if GrandTotal > MaxObjects:
                response = QMessageBox.question(None, "Large download warning", "The chosen extent and layers have resulted in a request for "+str(GrandTotal)+" objects.\n\n"+
                "As a rough guide 100,000 objects may take 10 minutes on faster connections but a few hours on slower connections.\n\n"+
                "Recommendation: try a smaller extent or download the dataset directly from http://qldspatial.information.qld.gov.au \n\n"+
                "Do you want to proceed this the current request ?")
                if response == no: 
                    feedback.reportError("Request terminated by user", True)
                    return {}
            #Load Natural Resource layers
            if loadTenure:
                post.update(dict(   service1 = "PlanningCadastre/", 
                                    service2 = "LandParcelPropertyFramework/",
                                    serviceNumber = str(13)
                                    ))
                layerInfo.update(dict(  layername = "Tenure",
                                        layerstyle = "LayerStyles/QldPropertyTenure.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            # Update server details
            post.update(dict(   service1 = "Biota/", 
                                service2 = "VegetationManagement/"
                                ))
            if loadSupportingMap:
                post.update(dict(serviceNumber = str(134)))
                layerInfo.update(dict(  layername = "Regional ecosystem map (regulated)",
                                        layerstyle = "LayerStyles/SupportingMap.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadPreClearMap:
                post.update(dict(serviceNumber = str(15)))
                layerInfo.update(dict(  layername = "Pre-clear RE map (VM edition)",
                                        layerstyle = "LayerStyles/PreClearMap.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadRVM:
                post.update(dict(serviceNumber = str(109)))
                layerInfo.update(dict(  layername = "RVM",
                                        layerstyle = "LayerStyles/RVM.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadPMAV:
                post.update(dict(serviceNumber = str(146)))
                layerInfo.update(dict(  layername = "PMAV",
                                        layerstyle = "LayerStyles/PMAV.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadEssHab:
                post.update(dict(serviceNumber = str(5)))
                layerInfo.update(dict(  layername = "Essential Habitat",
                                        layerstyle = "LayerStyles/EssentialHabitat.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadWetlands:
                post.update(dict(serviceNumber = str(4)))
                layerInfo.update(dict(  layername = "Wetlands",
                                        layerstyle = "LayerStyles/Wetlands.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadVMWater8:
                post.update(dict(serviceNumber = str(8)))
                layerInfo.update(dict(  layername = "VM Watercourses-SEQ)",
                                        layerstyle = "LayerStyles/VMWaterCourse.qml",
                                        geomtype = "MultiLineString"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadVMWater7:
                post.update(dict(serviceNumber = str(7)))
                layerInfo.update(dict(  layername = "VM Watercourses QLD",
                                        layerstyle = "LayerStyles/VMWaterCourse.qml",
                                        geomtype = "MultiLineString"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadPPTM:
                post.update(dict(serviceNumber = str(201)))
                layerInfo.update(dict(  layername = "Protected Plant Trigger Map",
                                        layerstyle = "LayerStyles/PPTM.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            # Update server details
            post.update(dict(   service1 = "Environment/", 
                                service2 = "KoalaPlan/"
                                ))
            if loadKoalaPA:
                post.update(dict(serviceNumber = str(1)))
                layerInfo.update(dict(  layername = "Koala Priority Area",
                                        layerstyle = "LayerStyles/KoalaPriorityArea.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadKoalaHA:
                post.update(dict(serviceNumber = str(3)))
                layerInfo.update(dict(  layername = "Koala Habitat Area-core",
                                        layerstyle = "LayerStyles/KoalaHabitatArea-core.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadKoalaRA:
                post.update(dict(serviceNumber = str(6)))
                layerInfo.update(dict(  layername = "Koala Restoration Area",
                                        layerstyle = "LayerStyles/KoalaHabitatRestorationArea.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadKoalaHAL:
                post.update(dict(serviceNumber = str(5)))
                layerInfo.update(dict(  layername = "Koala Habitat Area-locally refined",
                                        layerstyle = "LayerStyles/KoalaHabitatArea-LocallyRefined.qml",
                                        geomtype = "MultiPolygon"
                                        ))
                GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
            if loadSLATS:
                # Update server details
                post.update(dict(   service2 = "SLATS/"
                                    ))
                for i in range(2,47):   #200-249
                    if ((i+198) < (47+198)) and (i%2 != 0):
                        continue
                    post.update(dict(serviceNumber = str(i+198)))
                    LayerName=json.loads(GetGEOJSON(queryLayerName(post,context,feedback),context,feedback))
                    DefaultLayerName = str(i+198)
                    LayerName=LayerName.get('name',DefaultLayerName)
                    # Colour coding for SLATS yearly layers
                    if RC>0:
                        factor = 50
                        if i%2 == 0:
                            colourCodeR=int((factor-i)/(factor)*250)
                            colourCodeG=int((i)/(factor)*250)
                            colourCodeB=int((i)/(factor)*250)
                        else:
                            colourCodeR=int((i)/(factor)*250)
                            colourCodeG=int((i)/(factor)*250)
                            colourCodeB=int((factor-i)/(factor)*250)
                        if i%3 == 0:
                            colourCodeR=int((i)/(factor)*250)
                            colourCodeG=int((factor-i)/(factor)*250)
                            colourCodeB=int((i)/(factor)*250)
                        if i%4 == 0:
                            colourCodeR=int((factor-i)/(factor)*250)
                            colourCodeG=int((i)/(factor)*250)
                            colourCodeB=int((factor-i)/(factor)*250)
                        if i%5 == 0:
                            colourCodeR=int((i)/(factor)*250)
                            colourCodeG=int((factor-i)/(factor)*250)
                            colourCodeB=int((factor-i)/(factor)*250)
                        if i%6 == 0:
                            colourCodeR=int((factor-i)/(factor)*250)
                            colourCodeG=int((factor-i)/(factor)*250)
                            colourCodeB=int((i)/(factor)*250)
                        colourCodeH=int(250)
                        colourCodeRGB=(colourCodeR,colourCodeG,colourCodeB,colourCodeH)
                        #print(colourCodeRGB)
                        layerInfo.update(dict(  colour = colourCodeRGB ))
                    LayerName='SLATS - '+LayerName
                    layerInfo.update(dict(  layername = LayerName,
                                            layerstyle = "LayerStyles/SLATS"+str(i+198)+".qml",
                                            geomtype = "MultiPolygon"
                                            ))
                    GrandTotal=self.getNRlayer(RC,GrandTotal,post,layerInfo,context,feedback)
        feedback.setProgress(100)
        return {}
    
    def name(self):
        """
        Returns the algorithm name, used for identifying the algorithm. This
        string should be fixed for the algorithm, and must not be localised.
        The name should be unique within each provider. Names should contain
        lowercase alphanumeric characters only and no spaces or other
        formatting characters.
        """
        return 'Search by extent'

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
        return QextentAlgorithm()
    
    def icon(self):
        return QIcon(resolve("SearchByExtent.png"))
    
    def flags(self):
        return super().flags() | QgsProcessingAlgorithm.FlagNoThreading
    #