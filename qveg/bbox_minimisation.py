 # -*- coding: utf-8 -*-

"""
/***************************************************************************
 Bbox minimisation algorithm
 ---------------------------------------------------------------------------

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

#
from qgis.core import *
from qgis.utils import iface
import processing
#
def bboxGet(layerInfo,context,feedback):
    #list layerInfo
    PropertyVlayer = layerInfo['vlayer']
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
        return -1
    feedback.setProgressText("Number of bounding boxes in search = "+str(bboxes.featureCount()))
    extentList = []   # initialise extent list
    # Check for intersecting bboxes - if any intersect then merge intersecting bboxes into large bbox
    if bboxes.featureCount() < 1:
        feedback.reportError("No bounding boxes [code BB1]", True)
        return -1
    elif bboxes.featureCount() >= 1:
        bboxesInitialcount = bboxes.featureCount()
        bboxDict = {}
        for i,bbox in enumerate(bboxes.getFeatures()):
            bboxDict[str(i)] = bbox
        bboxDictBalance = bboxDict.copy()
        foundIntersection = True    # assume that bounding boxes intersect somewhere
        breakFlag = False           # initialise flag for loop
        bboxDictCombined = {}       # stores combined boxes
        # Here is where we search for intersecting boxes and merge any that do intersect.
        #Loop until no more intersections are found
        if bboxes.featureCount() > 1: feedback.setProgressText("Attempting to merge bounding boxes...")
        while foundIntersection:
            # cycle through every comparison combination 
            for i in range(len(bboxDict)-1):
                for j in range (i+1,len(bboxDict)):
                    exti = bboxDict.get(str(i)).geometry().boundingBox()
                    #print(str(i)+"  "+str(j))
                    #print(exti)
                    extj = bboxDict.get(str(j)).geometry().boundingBox()
                    #print(extj)
                    #
                    # If there is an intersection of two bounding boxes, then add it to the Combined list.
                    if exti.intersects(extj):
                        exti.combineExtentWith(extj)
                        #print("combined")
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
            #print("length of combined "+str(len(bboxDictCombined)))
            #print("length of balance "+str(len(bboxDictBalance)))
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
            bboxDictCombined = {}   # stores combined boxes - reset this here fir next loop around
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
            #print("length of bbox dictionary "+str(len(bboxDict)))
            #feedback.setProgressText("Reduced "+str(bboxesInitialcount)+" bounding boxes to "+str(len(bboxDict)))
        if len(bboxDict)<bboxesInitialcount and bboxesInitialcount != 1:
            feedback.setProgressText("Reduced "+str(bboxesInitialcount)+" bounding boxes to "+str(len(bboxDict)))
        elif len(bboxDict) == bboxesInitialcount and bboxesInitialcount != 1:
            feedback.setProgressText("Unable to merge bounding boxes...")
        #Get extent of each property polygon + a bit more (clipped later)
        for item in bboxDict.values():
            item = item.geometry().boundingBox()
            xmin = str(item.xMinimum()-0.0)
            ymin = str(item.yMinimum()-0.0)
            xmax = str(item.xMaximum()+0.0)
            ymax = str(item.yMaximum()+0.0)
            #Build extent string for server query
            extentList.append(xmin+","+ymin+","+xmax+","+ymax)
    return extentList