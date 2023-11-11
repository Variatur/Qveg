# -*- coding: utf-8 -*-

"""
/***************************************************************************
 
useful utilities for communicating with Qld Govt public spatial servers
                              -------------------
        begin                : 2020-11-07
        update               : 2021-04-25
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
#
def GetGEOJSON(URL,context,feedback):
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
def BuildQuery(post,context,feedback):
    # 
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
    #print(objectIds)
    geometry = post.get('geometry', '')
    # Build
    #baseURL = "https://gisservices.information.qld.gov.au/arcgis/rest/"
    baseURL = "https://spatial-gis.information.qld.gov.au/arcgis/rest/"
    serviceURL = "services/"+service1+service2+serviceType
    whereURL = serviceNumber+"/query?where="+where+"&objectIds="+objectIds+"&time="
    geomURL = "&geometry="+geometry+"&geometryType="+geometryType+"&inSR="+inSR+"&spatialRel=esriSpatialRelIntersects&distance=&units=esriSRUnit_Meter&relationParam="
    out1URL = "&outFields="+outFields+"&returnGeometry="+returnGeometry+"&maxAllowableOffset=&geometryPrecision=&outSR="+outSR+"&having=&gdbVersion=&historicMoment=&returnDistinctValues=false"
    out2URL = "&returnIdsOnly="+returnIdsOnly+"&returnCountOnly="+returnCountOnly+"&returnExtentOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics="
    out3URL = "&returnZ=false&returnM=false&multipatchOption=xyFootprint&resultOffset=&resultRecordCount=&returnTrueCurves=false&returnExceededLimitFeatures=false"
    out4URL = "&quantizationParameters=&returnCentroid=false&sqlFormat=none&resultType=&featureEncoding=esriDefault&f="+f
    queryURL = baseURL+serviceURL+whereURL+geomURL+out1URL+out2URL+out3URL+out4URL
    #
    return queryURL
def ItemInfo(post,context,feedback):
    #baseURL = "https://gisservices.information.qld.gov.au/arcgis/rest/"
    baseURL = "https://spatial-gis.information.qld.gov.au/arcgis/rest/"
    # Mandatory query parameters
    service1 = post.get('service1', '')
    service2 = post.get('service2', '')
    serviceNumber = post.get('serviceNumber', '')
    #
    # Optional query parameters with defaults
    f = "json"
    serviceType = post.get('serviceType', "MapServer/")
    # Build
    serviceURL = "services/"+service1+service2+serviceType
    whereURL = serviceNumber+"/iteminfo?f="+f
    queryURL = baseURL+serviceURL+whereURL
    return queryURL
def queryLayerName(post,context,feedback):
    #baseURL = "https://gisservices.information.qld.gov.au/arcgis/rest/"
    baseURL = "https://spatial-gis.information.qld.gov.au/arcgis/rest/"
    # Mandatory query parameters
    service1 = post.get('service1', '')
    service2 = post.get('service2', '')
    serviceNumber = post.get('serviceNumber', '')
    #
    # Optional query parameters with defaults
    f = "json"
    serviceType = post.get('serviceType', "MapServer/")
    # Build
    serviceURL = "services/"+service1+service2+serviceType
    whereURL = serviceNumber+"?f="+f
    queryURL = baseURL+serviceURL+whereURL
    return queryURL
def resolve(name, basepath=None):
    if not basepath:
      basepath = os.path.dirname(os.path.realpath(__file__))
    return os.path.join(basepath, name)