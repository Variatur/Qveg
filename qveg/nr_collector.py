 # -*- coding: utf-8 -*-

"""
/***************************************************************************
 Natural Resource data collector algorithm
 ---------------------------------------------------------------------------
                                 A QGIS plugin
 Loads data from the Queensland government feature server.
                              -------------------
        begin                : 2020-11-07
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

from PyQt5.QtGui import QIcon, QColor
import time
import datetime
import json
from .query import *
from .bbox_minimisation import *
#
def LoadNaturalResourceLayer(post,layerInfo,context,feedback):
    #list layerInfo
    standardCRS = layerInfo['standardCRS']
    layername = layerInfo['layername']
    #PropertyVlayer = layerInfo['vlayer']
    layerstyle = layerInfo['layerstyle']
    outputDIR = layerInfo['outputDIR']
    geomtype = layerInfo['geomtype']
    searchType = layerInfo['searchType'] 
    #
    standardCRSshort = standardCRS[len("EPSG:"):]
    NRdata = QgsVectorLayer(geomtype, layername, "memory")
    if not NRdata.isValid():
            feedback.reportError("Layer failed to load! [code A1]", True)
            return
    #
    if searchType == 'lotplan':
        #Get bounding boxes from PropertyVlayer
        PropertyVlayer = layerInfo['vlayer']
        #check if bounding boxes have already been generated
        if not ('extentList' in layerInfo.keys()):
            feedback.setProgressText("Getting extents of minimised bounding boxes...")
            extentList = bboxGet(layerInfo,context,feedback)
            if extentList == -1:
                feedback.reportError("Did not get extents [code A1.1]", True)
                return -1
            else:
                layerInfo.update(dict(  extentList = extentList ))
        else:
            extentList = layerInfo['extentList']
    elif searchType == 'extentstring':
        extentList = [layerInfo['extent']]
    else:
        return -1
    #
    # loop through resulting unique bboxes and process.
    #print(len(extentList))
    for ExtentString in extentList:
        #print(ExtentString)
        #
        bundleSize = 1000       # Server query maximum object number per query
        # get object count from server for given extent 
        post.update(dict(   geometry = ExtentString,
                            objectIds = ''
                            ))
        objectCount = GetObjectCount(post,layerInfo,context,feedback)
        if objectCount == 0: continue
        feedback.setProgressText("Total number of objects = "+str(objectCount))
        #
        # Get required object Ids
        post.update(dict(   returnCountOnly = "false",
                            returnIdsOnly = "true",
                            f = 'json',
                            objectIds = ''
                            ))
        objects = GetGEOJSON(BuildQuery(post,context,feedback),context,feedback)
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
            #print(BuildQuery(post,context,feedback))
            #print(post)
            sublistQueryResult = None
            sublistQueryResult = GetGEOJSON(BuildQuery(post,context,feedback),context,feedback)
            if sublistQueryResult == None:
                feedback.reportError("Problem communicating with server [code A1.4]", True)
                return -1
            # Pull result into Vector Layer - tempLayer
            tempLayer = QgsVectorLayer(sublistQueryResult, layername, "ogr")
            #print("tempLayer feature count = "+str(tempLayer.featureCount()))
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
                #print("tempLayer feature count = "+str(tempLayer.featureCount()))
                #print("Search type = "+searchType)
                if searchType == 'lotplan':
                    clipPolygon = PropertyVlayer
                elif searchType == 'extentstring':
                    s = ExtentString.split(',')
                    s = s[0]+','+s[2]+','+s[1]+','+s[3]
                    #print("Extent = "+s)
                    params = {
                        'INPUT' : s,
                        'OUTPUT' : "memory:"
                        }
                    clipPolygon = processing.run(
                        'native:extenttolayer', 
                        params,
                        context=context,
                        feedback=feedback)["OUTPUT"]
                    if feedback.isCanceled():
                        return 0
                else:
                    return 0
                #print("clipPolygon CRS = "+str(clipPolygon.crs().authid()))
                crs = clipPolygon.crs()
                crs.createFromId(int(standardCRSshort))
                clipPolygon.setCrs(crs)
                #print("clipPolygon feature count = "+str(clipPolygon.featureCount()))
                #print("clipPolygon CRS = "+str(clipPolygon.crs().authid()))
                #QgsProject.instance().addMapLayer(clipPolygon)
                #Clip layer to property polygon
                params = {
                    'INPUT' : tempLayer,
                    'OVERLAY' : clipPolygon,
                    'OUTPUT' : "memory:"
                }
                tempLayer = processing.run(
                    'native:clip', 
                    params,
                    context=context,
                    feedback=feedback)["OUTPUT"]
                if feedback.isCanceled():
                    return 0
                #print("tempLayer feature count = "+str(tempLayer.featureCount()))
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
                    #print("NRdata feature count = "+str(NRdata.featureCount()))
            feedback.setProgress(25+round(position*bundleSize/objectCount*50))
            position = position + 1
    #check if final NRdata is valid
    if not NRdata.isValid():
        feedback.reportError("Layer failed to load! [code A3]", True)
        return
    #print("NRdata feature count = "+str(NRdata.featureCount()))
    if NRdata.featureCount() > 0:
        NRdata.setName(layername)
        #work in progress
        # apply style
        properties = {'color': QColor.fromRgb(221,239,196,255), 
                      'style': 'solid',
                      'outline_style': 'solid',
                      'outline_color': 'solid'
                      }
        symbol = QgsSymbol.defaultSymbol(NRdata.geometryType())
        renderer = QgsSingleSymbolRenderer(symbol)
        symbol_layer = QgsSimpleFillSymbolLayer.create(properties)
        renderer.symbol().changeSymbolLayer(0, symbol_layer)
        NRdata.setRenderer(renderer)
        #work in progress
        #
        #Write layer to file and reload
        TimeString = str(datetime.datetime.now()).replace(':','-').replace(':','-').replace('.','-').replace(' ','-')
        #Save as GeoPackage
        #QgsVectorFileWriter.writeAsVectorFormat(NRdata,outputDIR+"/"+layername+TimeString+".gpkg",'utf-8',QgsCoordinateReferenceSystem(standardCRS))
        QgsVectorFileWriter.writeAsVectorFormat(NRdata,outputDIR+"/"+layername+TimeString+".gpkg",'utf-8')
        feedback.setProgressText("Saved as ... "+outputDIR+"/"+layername+TimeString+".gpkg")
        #
        #Reload layer
        NRdata = QgsVectorLayer(outputDIR+"/"+layername+TimeString+".gpkg",layername,"ogr")
        #
        if not NRdata.isValid():
            feedback.reportError("Layer failed to load! [code A4]", True)
            return
        # Add styling for NRdata
        NRdata.loadNamedStyle(resolve(layerstyle))
        if 'colour' in layerInfo.keys():
            r,g,b,h=layerInfo['colour']
            NRdata.renderer().symbol().setColor(QColor.fromRgb(r,g,b,h))
            layerInfo.pop('colour')
        #write style to geopackage
        NRdata.saveStyleToDatabase(name="Qgeo-default", description=layerInfo['layerstyle'], useAsDefault=True, uiFileContent="")
        #
        #Add layer to canvas
        project = QgsProject.instance()
        project.addMapLayer(NRdata, False)
        layerTree = iface.layerTreeCanvasBridge().rootGroup()
        layerTree.insertChildNode(1, QgsLayerTreeLayer(NRdata))
        #feedback.setProgressText("OK")
    #else:
        #feedback.setProgressText("-no data-")
    #
    return NRdata.featureCount()
def GetObjectCount(post,layerInfo,context,feedback):
    post.update(dict(   returnCountOnly = "true",
                        f = 'json'
                        ))
    #print(BuildQuery(post,context,feedback))
    queryResult = GetGEOJSON(BuildQuery(post,context,feedback),context,feedback)
    if queryResult == None:
        feedback.reportError("Problem communicating with server [code A1.2]", True)
        return -1
    objectCount = json.loads(queryResult)["count"]
    post.update(dict(   returnCountOnly = "false" ))
    return objectCount
