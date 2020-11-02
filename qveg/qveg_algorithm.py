# -*- coding: utf-8 -*-

"""
/***************************************************************************
 Qveg
                                 A QGIS plugin
 Loads Queensland Vegetation Management (QVM) map data from the Queensland government feature server based on a property (lot plan) search.
 Generated by Plugin Builder: http://g-sherman.github.io/Qgis-Plugin-Builder/
                              -------------------
        begin                : 2020-05-06
        copyright            : (C) 2020 by Otto and Gary Pattemore
        email                : g .dot. pattemore .at. gmail .dot. com
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

__author__ = 'Otto and Gary Pattemore'
__date__ = '2020-05-06'
__copyright__ = '(C) 2020 by Otto and Gary Pattemore'

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
#
def resolve(name, basepath=None):
    if not basepath:
      basepath = os.path.dirname(os.path.realpath(__file__))
    return os.path.join(basepath, name)

class QvegAlgorithm(QgsProcessingAlgorithm):
    INPUT = 'INPUT'
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
    def initAlgorithm(self, config):
        self.addParameter(
            QgsProcessingParameterString(
                self.INPUT,
                self.tr('Search LotPlan number(s) e.g. 53SP253460 92OR290 67OR337  [will ignore invalid Lot/Plans]')
            )
        )
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
    def GetGEOJSON(self,URL,context,feedback):
        #This method of server access avoids firewall problems
        params = {
            'URL' : URL,
            'OUTPUT' : "TEMPORARY_OUTPUT"
        }
        tempLayer = processing.run(
            'native:filedownloader',
            params,
            is_child_algorithm=True,
            context=context,
            feedback=feedback)["OUTPUT"]
        if feedback.isCanceled():
            return None
        file = open(tempLayer)
        return_string = file.read()
        file.close()
        return return_string
    def BuildQuery(self,post,context,feedback):
        # 
        baseURL = "https://gisservices.information.qld.gov.au/arcgis/rest/"
        # Mandatory query parameters
        service1 = post.get('service1', '')
        service2 = post.get('service2', '')
        serviceNumber = post.get('serviceNumber', '')
        #
        # Optional query parameters with defaults
        f = post.get('f', 'json')
        serviceType = post.get('serviceType', "MapServer/")
        returnCountOnly = post.get('returnCountOnly', "false")
        returnGeometry = post.get('returnGeometry',"true")
        returnIdsOnly = post.get('returnIdsOnly', "false")
        outFields = post.get('outFields', '*')
        outSR = post.get('outSR', '7844')
        inSR = post.get('inSR', '7844')
        geometryType = post.get('geometryType', "esriGeometryEnvelope")
        #
        # Optional query parameters with empty string defaults
        where = post.get('where', '')
        objectIds = post.get('objectIds', '')
        geometry = post.get('geometry', '')
        # Build
        serviceURL = "services/"+service1+service2+serviceType
        whereURL = serviceNumber+"/query?where="+where+"&objectIds="+objectIds+"&time="
        geomURL = "&geometry="+geometry+"&geometryType="+geometryType+"&inSR="+inSR+"&spatialRel=esriSpatialRelIntersects&distance=&units=esriSRUnit_Meter&relationParam="
        out1URL = "&outFields="+outFields+"&returnGeometry="+returnGeometry+"&maxAllowableOffset=&geometryPrecision=&outSR="+outSR+"&having=&gdbVersion=&historicMoment=&returnDistinctValues=false"
        out2URL = "&returnIdsOnly="+returnIdsOnly+"&returnCountOnly="+returnCountOnly+"&returnExtentOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics="
        out3URL = "&returnZ=false&returnM=false&multipatchOption=xyFootprint&resultOffset=&resultRecordCount=&returnTrueCurves=false&returnExceededLimitFeatures=false"
        out4URL = "&quantizationParameters=&returnCentroid=false&sqlFormat=none&resultType=&featureEncoding=esriDefault&f="+f
        queryURL = baseURL+serviceURL+whereURL+geomURL+out1URL+out2URL+out3URL+out4URL
        # --following line to be deleted
        #print(queryURL)
        return queryURL
    def LoadPropertyLayer(self,layerInfo,context,feedback):
        LotPlans = layerInfo['lots']
        standardCRS = layerInfo['standardCRS']
        layername = layerInfo['layername']
        layerstyle = layerInfo['layerstyle']
        outputDIR = layerInfo['outputDIR']
        #make short form of CRS for web query
        standardCRSshort = standardCRS[len("EPSG:"):]
        #
        #Build SQL query for server: LOTPLAN LIKE x OR LOTPLAN LIKE y
        LotPlansSQLQuery = "LOTPLAN+LIKE+'"+LotPlans[0] + "'"
        for lotplan in LotPlans[1:]:
            LotPlansSQLQuery = LotPlansSQLQuery + "+OR+LOTPLAN+LIKE+" + "'"+lotplan+"'"
        # Get list of polygon IDs
        post = None
        post = dict(    service1 = "PlanningCadastre/", 
                        service2 = "LandParcelPropertyFramework/",
                        serviceType = "MapServer/",
                        serviceNumber = str(4),
                        returnIdsOnly = "true",
                        f = 'json',
                        where = LotPlansSQLQuery,
                        returnGeometry = 'false'
                        )
        objectIds = self.GetGEOJSON(self.BuildQuery(post,context,feedback),context,feedback)
        if objectIds == None:
            return None
        objectID_list = json.loads(objectIds)["objectIds"]
        # Get feature count
        if objectID_list == None:
            feedback.reportError("No objects to retrieve. Was the Lot/Plan valid? Exiting...")
            return None
        objectCount = len(objectID_list)
        feedback.setProgressText("Getting "+str(objectCount)+" polygons")
        #Get property polygon(s)
        post = dict(    service1 = "PlanningCadastre/", 
                        service2 = "LandParcelPropertyFramework/",
                        serviceType = "MapServer/",
                        serviceNumber = str(4),
                        returnIdsOnly = "false",
                        f = 'geojson',
                        where = '',
                        objectIds = ",".join(str(i) for i in objectID_list),
                        returnGeometry = 'true',
                        outSR = standardCRSshort
                        )
        PropertyLayer = QgsVectorLayer(self.GetGEOJSON(self.BuildQuery(post,context,feedback),context,feedback), layername, "ogr")
        #Ensure the created layer is valid
        if not PropertyLayer.isValid() or PropertyLayer.featureCount() < 1:
            #QgsMessageLog.logMessage("Failed to load property boundary! Invalid lot/plan?")
            feedback.reportError("Failed to load property boundary! Invalid lot/plan? [code B2]", True)
            return None
        #
        #Buffer layer to clean-up inconsistencies in returned vector info -- uses buffer distance = 0
        params = {
            'INPUT' : PropertyLayer,
            'DISTANCE' : 0,
            'OUTPUT' : "memory:"
        }
        PropertyLayer = processing.run(
            'native:buffer', 
            params,
            #is_child_algorithm=True,
            context=context,
            feedback=feedback)["OUTPUT"]
        if feedback.isCanceled():
            return None
        #
        #Write layer to shape file and reload layer from shapefile
        TimeString = str(datetime.datetime.now()).replace(':','-').replace(':','-').replace('.','-').replace(' ','-')
        #Save as GeoPackage
        #print(PropertyLayer)
        QgsVectorFileWriter.writeAsVectorFormat(PropertyLayer,outputDIR+"/Property"+TimeString+".gpkg",'utf-8',QgsCoordinateReferenceSystem(standardCRS))
        #Save as shapefile - legacy, now disabled
        #QgsVectorFileWriter.writeAsVectorFormat(PropertyLayer,outputDIR+"/Property"+TimeString+".shp",'utf-8',QgsCoordinateReferenceSystem(standardCRS),driverName="ESRI Shapefile")
        # Reload layer
        PropertyLayer = QgsVectorLayer(outputDIR+"/Property"+TimeString+".gpkg","Property Boundary","ogr")
        if not PropertyLayer.isValid():
                feedback.reportError("Layer failed to load! [code B3]", True)
                return None
        #
        PropertyLayer.setName(layername)
        # Add styling
        PropertyLayer.loadNamedStyle(resolve(layerstyle))
        #write style to geopackage
        PropertyLayer.saveStyleToDatabase(name="Qveg-default", description=layerstyle, useAsDefault=True, uiFileContent="")
        #
        PropertyLayer.triggerRepaint()
        return PropertyLayer

    def LoadNaturalResourceLayer(self,post,layerInfo,context,feedback):
        # pullout required variables from layerInfo dictionary
        standardCRS =   layerInfo['standardCRS']
        layername =     layerInfo['layername']
        PropertyVlayer = layerInfo['vlayer']
        layerstyle =    layerInfo['layerstyle']
        outputDIR =     layerInfo['outputDIR']
        geomtype =      layerInfo['geomtype']
        # get the short CRS for server queries
        standardCRSshort = standardCRS[len("EPSG:"):]
        # build empty vector layer in required geometry type 
        NRdata = QgsVectorLayer(geomtype, layername, "memory")
        # check if valid layer is built
        if not NRdata.isValid():
                feedback.reportError("Layer failed to load! [code A1]", True)
                return -1
        #
        #Get bounding boxes from PropertyVlayer
        params = {
            'INPUT' : PropertyVlayer,
            'OUTPUT' : "memory:"
        }
        bboxes = processing.run(
            'native:boundingboxes', 
            params,
            context=context,
            feedback=feedback)["OUTPUT"]
        if feedback.isCanceled():
            return 0
        feedback.setProgressText("Number of calculated bounding boxes = "+str(bboxes.featureCount()))
        extentList = []   # initialise extent dictionary
        # Check for intersecting bboxes - if any intersect then merge intersecting bboxes into large bbox
        if bboxes.featureCount() < 1:
            feedback.reportError("No bounding boxes [code BB1]", True)
            return -1
        elif bboxes.featureCount() == 1: 
            #Get extent of polygon + a bit more (clipped later)
            PolygonExtent = PropertyVlayer.extent()
            xmin = str(PolygonExtent.xMinimum()-0.01)
            ymin = str(PolygonExtent.yMinimum()-0.01)
            xmax = str(PolygonExtent.xMaximum()+0.01)
            ymax = str(PolygonExtent.yMaximum()+0.01)
            #Build extent string for server query
            extentList.append(xmin+","+ymin+","+xmax+","+ymax)
            feedback.setProgressText("One bounding box with extent "+xmin+","+ymin+","+xmax+","+ymax)
        elif bboxes.featureCount() > 1:
            bboxesInitialcount = bboxes.featureCount()
            bboxDict = {}
            for i,bbox in enumerate(bboxes.getFeatures()):
                bboxDict[str(i)] = bbox
            bboxDictBalance = bboxDict.copy()
            foundIntersection = True    # assume that bounding boxes intersect somewhere
            #Loop until no more intersections are found
            while foundIntersection:
                bboxDictCombined = {}   # stores combined boxes
                # cycle through every comparison combination 
                for i in range(len(bboxDict)-1):
                    for j in range (i+1,len(bboxDict)):
                        exti = bboxDict.get(str(i)).geometry().boundingBox()
                        print(str(i)+"  "+str(j))
                        #print(exti)
                        extj = bboxDict.get(str(j)).geometry().boundingBox()
                        #print(extj)
                        #
                        # If there is an intersection of two bounding boxes, then add it to the Combined list.
                        if exti.intersects(extj):
                            exti.combineExtentWith(extj)
                            print("combined")
                            #print(exti)
                            # Pop the two overlapping boxes from the Balance list
                            bboxDictCombined[str(i)+'-'+str(j)] = exti
                            try: 
                                bboxDictBalance.pop(str(i))
                            except:
                                pass
                            try: 
                                bboxDictBalance.pop(str(j))
                            except:
                                pass
                            breakFlag = True
                            break
                    if breakFlag == True: break
                print("length of combined "+str(len(bboxDictCombined)))
                print("length of balance "+str(len(bboxDictBalance)))
                # rebuild box dictionary from Balance and Combined
                bboxDict = {}
                for i,value in enumerate(bboxDictBalance.values()):
                    bboxDict[str(i)] = value
                k = len(bboxDict)
                for i,value in enumerate(bboxDictCombined.values()):
                    ft = QgsFeature()
                    geom = QgsGeometry.fromWkt(value.asWktPolygon())
                    ft.setGeometry(geom)
                    bboxDict[str(k+i)] = ft
                #check if we combined boxes
                if breakFlag == True: 
                    breakFlag = False
                    foundIntersection = True
                    # Rebuild Balance dictionary
                    bboxDictBalance = {}
                    bboxDictBalance = bboxDict.copy()
                else:
                    foundIntersection = False
                # If box dictionary has only 1 element then stop
                if len(bboxDict) < 2: foundIntersection = False
                print("length of bbox dictionary "+str(len(bboxDict)))
                feedback.setProgressText("Reduced "+str(bboxesInitialcount)+" bounding boxes to "+str(len(bboxDict)))
            feedback.setProgressText("Reduced "+str(bboxesInitialcount)+" bounding boxes to "+str(len(bboxDict)))
            #Get extent of each property polygon + a bit more (clipped later)
            for item in bboxDict.values():
                item = item.geometry().boundingBox()
                xmin = str(item.xMinimum()-0.0)
                ymin = str(item.yMinimum()-0.0)
                xmax = str(item.xMaximum()+0.0)
                ymax = str(item.yMaximum()+0.0)
                #Build extent string for server query
                extentList.append(xmin+","+ymin+","+xmax+","+ymax)
        #
        # loop through resulting unique bboxes and process.
        for ExtentString in extentList:
            print(ExtentString)
            #
            bundleSize = 1000       # Server query maximum object number per query
            # get object count from server for given extent 
            post.update(dict(   returnCountOnly = "true",
                                f = 'json',
                                geometry = ExtentString,
                                objectIds = '',
                                ))
            queryResult = None
            #print(self.BuildQuery(post,context,feedback))
            queryResult = self.GetGEOJSON(self.BuildQuery(post,context,feedback),context,feedback)
            if queryResult == None:
                feedback.reportError("Problem communicating with server [code A1.2]. Did not get data for "+layerInfo['layername'], True)
                return -1
            objectCount = json.loads(queryResult)["count"]  # result from server
            feedback.setProgressText("Total number of objects = "+str(objectCount))
            #
            # Get required object Ids
            post.update(dict(   returnCountOnly = "false",
                                returnIdsOnly = "true",
                                f = 'json',
                                objectIds = ''
                                ))
            objects = self.GetGEOJSON(self.BuildQuery(post,context,feedback),context,feedback)
            if objects == None:
                feedback.reportError("Problem communicating with server [code A1.3]", True)
                return -1
            objectID_list = None
            objectID_list = json.loads(objects)["objectIds"]
            if objectID_list == None:
                feedback.setProgressText("No objects to retrieve...skipping")
                feedback.setProgressText("--")
                return 0
            objectCount = len(objectID_list)
            #
            #Get bundleSize features at a time - server limit is 2000 per query
            post.update(dict(   f = 'geojson',
                                returnIdsOnly = "false",
                                geometry = ''
                                ))
            position=0
            while position*bundleSize < objectCount:
                lowend = position*bundleSize
                highend = position * bundleSize + (bundleSize-1)
                sublist = objectID_list[lowend:highend]
                if len(sublist)<(highend-lowend): highend = lowend + len(sublist)
                feedback.setProgressText("Getting objects "+str(lowend)+" to "+str(highend)+"...")
                #print(str(len(sublist)))
                # Build server query string - objectIds
                sublist = ",".join(map(str,sublist))
                post.update(dict(objectIds = sublist))
                #print(self.BuildQuery(post,context,feedback))
                sublistQueryResult = None
                sublistQueryResult = self.GetGEOJSON(self.BuildQuery(post,context,feedback),context,feedback)
                if sublistQueryResult == None:
                    feedback.reportError("Problem communicating with server [code A1.4]", True)
                    return -1
                # Pull result into Vector Layer - tempLayer
                tempLayer = QgsVectorLayer(sublistQueryResult, layername, "ogr")
                #print(str(tempLayer.featureCount()))
                #
                #Check if valid geometry is returned
                if tempLayer.featureCount() > 0:
                    #Buffer layer to clean-up inconsistencies in returned polygons -- uses buffer distance = 0
                    if QgsWkbTypes.geometryDisplayString(tempLayer.geometryType()) == "Polygon":
                        params = {
                            'INPUT' : tempLayer,
                            'DISTANCE' : 0,
                            'OUTPUT' : "memory:"
                        }
                        tempLayer = processing.run(
                            'native:buffer', 
                            params,
                            context=context,
                            feedback=feedback)["OUTPUT"]
                        if feedback.isCanceled():
                            return 0
                    #
                    #Clip layer to property polygon
                    params = {
                        'INPUT' : tempLayer,
                        'OVERLAY' : PropertyVlayer,
                        'OUTPUT' : "memory:"
                    }
                    tempLayer = processing.run(
                        'native:clip', 
                        params,
                        context=context,
                        feedback=feedback)["OUTPUT"]
                    if feedback.isCanceled():
                        return 0
                    #
                    # Merging layer with Master copy if the clipped layer still has features
                    if tempLayer.featureCount() > 0:
                        params = {
                            'LAYERS' : [tempLayer,NRdata],
                            'OUTPUT' : "memory:"
                        }
                        NRdata = processing.run(
                            'native:mergevectorlayers', 
                            params,
                            context=context,
                            feedback=feedback)["OUTPUT"]
                        if feedback.isCanceled():
                            return 0
                feedback.setProgress(25+round(position*bundleSize/objectCount*50))
                position = position + 1
        #check if final NRdata is valid
        if not NRdata.isValid():
                feedback.reportError("Layer failed to load! [code A3]", True)
                return -1
        if NRdata.featureCount() > 0:
            NRdata.setName(layername)
            #
            #Write layer to file and reload
            TimeString = str(datetime.datetime.now()).replace(':','-').replace(':','-').replace('.','-').replace(' ','-')
            #Save as GeoPackage
            QgsVectorFileWriter.writeAsVectorFormat(NRdata,outputDIR+"/"+layername+TimeString+".gpkg",'utf-8',QgsCoordinateReferenceSystem(standardCRS))
            #Reload layer
            NRdata = QgsVectorLayer(outputDIR+"/"+layername+TimeString+".gpkg",layername,"ogr")
            if not NRdata.isValid():
                feedback.reportError("Layer failed to load! [code A4]", True)
                return
            # Add styling for NRdata
            NRdata.loadNamedStyle(resolve(layerstyle))
            #write style to geopackage
            NRdata.saveStyleToDatabase(name="Qveg-default", description=layerstyle, useAsDefault=True, uiFileContent="")
            #
            #Add layer to canvas
            project = QgsProject.instance()
            project.addMapLayer(NRdata, False)
            layerTree = iface.layerTreeCanvasBridge().rootGroup()
            layerTree.insertChildNode(1, QgsLayerTreeLayer(NRdata))
            feedback.setProgressText("OK")
        else:
            feedback.setProgressText("-no data-")
        #
        return
    def processAlgorithm(self, parameters, context, feedback):
        # Set the standard CRS to GDA2020 (EPSG:7844)
        standardCRS = "EPSG:7844"
        #Parse the lot plan numbers
        lots = re.sub('[^0-9a-zA-Z]+', ',', self.parameterAsString(parameters,self.INPUT,context).upper()).split(',')
        #
        #
        lotplans_message = "Lot/Plan(s): "+", ".join(lots)
        #QgsMessageLog.logMessage(lotpans_message,"VegTools Messages",level=Qgis.Info)
        feedback.setProgressText(lotplans_message)
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
        outputDIR = self.parameterAsFileOutput(parameters,self.OUTPUTDIR,context)
        feedback.setProgress(1)
        # The following lines workaround an apparent QGIS bug where a temporary directory isn't actually made.
        try:
            os.mkdir(outputDIR)
        except FileExistsError as e:
            pass
        layerInfo = dict(   lots = lots,
                            layername = 'Property Boundary',
                            layerstyle = 'LayerStyles/Property.qml',
                            outputDIR = outputDIR,
                            standardCRS = standardCRS,
                            )
        #Get property polygon(s)
        PropertyVlayer = self.LoadPropertyLayer(layerInfo,context,feedback)
        if PropertyVlayer == None or not PropertyVlayer.isValid() or PropertyVlayer.featureCount() < 1:
            feedback.reportError("Failed to load property boundary! Invalid lot/plan? Network or server problems?", True)
            return {}
        #
        feedback.setProgress(15)
        feedback.setProgressText("Property polygon(s) loaded")  
        # Load property layer to canvas
        project = QgsProject.instance()
        project.addMapLayer(PropertyVlayer, False)
        layerTree = iface.layerTreeCanvasBridge().rootGroup()
        layerTree.insertChildNode(0, QgsLayerTreeLayer(PropertyVlayer))
        feedback.setProgress(20)
        #
        #Zoom to extent
        canvas = iface.mapCanvas()
        canvasCRS = QgsCoordinateReferenceSystem(canvas.mapSettings().destinationCrs().authid())
        PropertyCRS = QgsCoordinateReferenceSystem(PropertyVlayer.crs())
        xform = QgsCoordinateTransform(PropertyCRS, canvasCRS, project)
        canvas.setExtent(xform.transform(PropertyVlayer.extent()))
        #
        # Initialise dictionaries
        post = dict(serviceType = "MapServer/",
                    f = 'geojson'
                    )
        layerInfo = dict(   vlayer = PropertyVlayer,
                            outputDIR = outputDIR,
                            standardCRS = standardCRS
                            )
        #
        #Load Natural Resource layers
        if loadTenure:
            feedback.setProgressText("Getting tenure map...")
            post.update(dict(   service1 = "PlanningCadastre/", 
                                service2 = "LandParcelPropertyFramework/",
                                serviceNumber = str(13)
                                ))
            layerInfo.update(dict(  layername = "Tenure",
                                    layerstyle = "LayerStyles/QldPropertyTenure.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(25)
        # Update server details
        post.update(dict(   service1 = "Biota/", 
                            service2 = "VegetationManagement/"
                            ))
        if loadSupportingMap:
            feedback.setProgressText("Getting regional ecosystem map...")
            post.update(dict(serviceNumber = str(134)))
            layerInfo.update(dict(  layername = "Regional ecosystem map (regulated)",
                                    layerstyle = "LayerStyles/SupportingMap.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(30)
        if loadPreClearMap:
            feedback.setProgressText("Getting pre-clear regional ecosystem map...")
            post.update(dict(serviceNumber = str(15)))
            layerInfo.update(dict(  layername = "Pre-clear RE map (VM edition)",
                                    layerstyle = "LayerStyles/PreClearMap.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(35)
        if loadRVM:
            feedback.setProgressText("Getting RVM...")
            post.update(dict(serviceNumber = str(109)))
            layerInfo.update(dict(  layername = "RVM",
                                    layerstyle = "LayerStyles/RVM.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(40)
        if loadPMAV:
            feedback.setProgressText("Getting PMAV...")
            post.update(dict(serviceNumber = str(146)))
            layerInfo.update(dict(  layername = "PMAV",
                                    layerstyle = "LayerStyles/PMAV.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(50)
        if loadEssHab:
            feedback.setProgressText("Getting Essential Habitat map...")
            post.update(dict(serviceNumber = str(5)))
            layerInfo.update(dict(  layername = "Essential Habitat",
                                    layerstyle = "LayerStyles/EssentialHabitat.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(60)
        if loadWetlands:
            feedback.setProgressText("Getting Wetlands map...")
            post.update(dict(serviceNumber = str(4)))
            layerInfo.update(dict(  layername = "Wetlands",
                                    layerstyle = "LayerStyles/Wetlands.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(70)
        if loadVMWater8:
            feedback.setProgressText("Getting 1:25000 (SEQ) Watercourse map...")
            post.update(dict(serviceNumber = str(8)))
            layerInfo.update(dict(  layername = "VM Watercourses-SEQ)",
                                    layerstyle = "LayerStyles/VMWaterCourse.qml",
                                    geomtype = "MultiLineString"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(80)
        if loadVMWater7:
            feedback.setProgressText("Getting Qld Watercourse map...")
            post.update(dict(serviceNumber = str(7)))
            layerInfo.update(dict(  layername = "VM Watercourses QLD",
                                    layerstyle = "LayerStyles/VMWaterCourse.qml",
                                    geomtype = "MultiLineString"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(90)    
        if loadPPTM:
            feedback.setProgressText("Getting Protected Plant Trigger Map...")
            post.update(dict(serviceNumber = str(201)))
            layerInfo.update(dict(  layername = "Protected Plant Trigger Map",
                                    layerstyle = "LayerStyles/PPTM.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(94)
        # Update server details
        post.update(dict(   service1 = "Environment/", 
                            service2 = "KoalaPlan/"
                            ))
        if loadKoalaPA:
            feedback.setProgressText("Getting Koala Priority Area...")
            post.update(dict(serviceNumber = str(1)))
            layerInfo.update(dict(  layername = "Koala Priority Area",
                                    layerstyle = "LayerStyles/KoalaPriorityArea.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(95)
        if loadKoalaHA:
            feedback.setProgressText("Getting Koala Habitat Area-core...")
            post.update(dict(serviceNumber = str(3)))
            layerInfo.update(dict(  layername = "Koala Habitat Area-core",
                                    layerstyle = "LayerStyles/KoalaHabitatArea-core.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(96)
        if loadKoalaRA:
            feedback.setProgressText("Getting Koala Restoration Area...")
            post.update(dict(serviceNumber = str(6)))
            layerInfo.update(dict(  layername = "Koala Restoration Area",
                                    layerstyle = "LayerStyles/KoalaHabitatRestorationArea.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(97)
        if loadKoalaHAL:
            feedback.setProgressText("Getting Koala Habitat Area-locally refined...")
            post.update(dict(serviceNumber = str(5)))
            layerInfo.update(dict(  layername = "Koala Habitat Area-locally refined",
                                    layerstyle = "LayerStyles/KoalaHabitatArea-LocallyRefined.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.LoadNaturalResourceLayer(post,layerInfo,context,feedback)
            feedback.setProgress(98)
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
        return 'Lot Plan search'

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
        return QvegAlgorithm()
    
    def icon(self):
        return QIcon(resolve("search.png"))
    
    def flags(self):
        return super().flags() | QgsProcessingAlgorithm.FlagNoThreading
    #