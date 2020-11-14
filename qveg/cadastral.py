# -*- coding: utf-8 -*-

"""
/***************************************************************************
 Get property layer based on Lot/Plan search
                                
                              -------------------
        begin                : 2020-11-07
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
__date__ = '2020-11-07'
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
#from .nr_collector import *
from .query import *
#
def LoadPropertyLayer(layerInfo,context,feedback):
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
    objectIds = GetGEOJSON(BuildQuery(post,context,feedback),context,feedback)
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
    #print(post.get('objectIds'))
    PropertyLayer = QgsVectorLayer(GetGEOJSON(BuildQuery(post,context,feedback),context,feedback), layername, "ogr")
    #Ensure the created layer is valid
    if not PropertyLayer.isValid() or PropertyLayer.featureCount() < 1:
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
        context=context,
        feedback=feedback)["OUTPUT"]
    if feedback.isCanceled():
        return None
    #
    #Write layer to file and reload
    TimeString = str(datetime.datetime.now()).replace(':','-').replace(':','-').replace('.','-').replace(' ','-')
    #Save as GeoPackage
    QgsVectorFileWriter.writeAsVectorFormat(PropertyLayer,outputDIR+"/Property"+TimeString+".gpkg",'utf-8',QgsCoordinateReferenceSystem(standardCRS))
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
    PropertyLayer.saveStyleToDatabase(name="Qgeo-default", description=layerstyle, useAsDefault=True, uiFileContent="")
    PropertyLayer.triggerRepaint()
    return PropertyLayer