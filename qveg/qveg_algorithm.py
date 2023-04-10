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
__date__ = '2020-11-12'
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
from .nr_collector import *
from .query import *
from .cadastral import *
#
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
    LOADSLATS = "LOADSLATS"
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
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADSLATS,
                self.tr('Statewide Landcover and Trees Study (SLATS) - 1988-2018'),
                False
            )
        )
    def getNRlayer(self,post,layerInfo,context,feedback):
        LayerName = layerInfo['layername']
        feedback.setProgressText(LayerName+" -- loading...")
        fc = LoadNaturalResourceLayer(post,layerInfo,context,feedback)
        if fc > 1: feedback.setProgressText(LayerName+" - loaded "+str(fc)+" objects")
        if fc == 1: feedback.setProgressText(LayerName+" - loaded "+str(fc)+" object")
        if fc == 0: feedback.setProgressText(LayerName+" - no objects found")
        feedback.setProgressText("-----------")
        return
    def processAlgorithm(self, parameters, context, feedback):
        # Set the standard CRS to GDA2020 (EPSG:7844)
        project = QgsProject.instance()
        projectCRS=project.crs()
        standardCRS = "EPSG:7844"
        #Parse the lot plan numbers
        lots = re.sub('[^0-9a-zA-Z]+', ',', self.parameterAsString(parameters,self.INPUT,context).upper()).split(',')
        #
        lotplans_message = "Lot/Plan(s): "+", ".join(lots)
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
        loadSLATS = self.parameterAsBool(parameters,self.LOADSLATS,context)
        outputDIR = self.parameterAsFileOutput(parameters,self.OUTPUTDIR,context)
        feedback.setProgress(1)
        # make directory
        try:
            os.mkdir(outputDIR)
        except FileExistsError as e:
            pass
        layerInfo = dict(   lots = lots,
                            layername = 'Property Boundary',
                            layerstyle = 'LayerStyles/Property.qml',
                            outputDIR = outputDIR,
                            projectCRS = projectCRS,
                            standardCRS = standardCRS,
                            )
        #Get property polygon(s)
        PropertyVlayer = LoadPropertyLayer(layerInfo,context,feedback)
        if PropertyVlayer == None or not PropertyVlayer.isValid() or PropertyVlayer.featureCount() < 1:
            feedback.reportError("Failed to load property boundary! Invalid lot/plan? Network or server problems?", True)
            return {}
        #
        feedback.setProgress(15)
        feedback.setProgressText("Property polygon(s) loaded")
        #
        # Load property layer to canvas
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
        post = dict(        serviceType = "MapServer/",
                            f = 'geojson'
                            )
        layerInfo = dict(   vlayer = PropertyVlayer,
                            outputDIR = outputDIR,
                            projectCRS = projectCRS,
                            standardCRS = standardCRS,
                            searchType = 'lotplan'
                            )
        #
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
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(25)
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
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(30)
        if loadPreClearMap:
            post.update(dict(serviceNumber = str(15)))
            layerInfo.update(dict(  layername = "Pre-clear RE map (VM edition)",
                                    layerstyle = "LayerStyles/PreClearMap.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(35)
        if loadRVM:
            post.update(dict(serviceNumber = str(109)))
            layerInfo.update(dict(  layername = "RVM",
                                    layerstyle = "LayerStyles/RVM.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(40)
        if loadPMAV:
            post.update(dict(serviceNumber = str(146)))
            layerInfo.update(dict(  layername = "PMAV",
                                    layerstyle = "LayerStyles/PMAV.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(50)
        if loadEssHab:
            post.update(dict(serviceNumber = str(5)))
            layerInfo.update(dict(  layername = "Essential Habitat",
                                    layerstyle = "LayerStyles/EssentialHabitat.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(60)
        if loadWetlands:
            post.update(dict(serviceNumber = str(4)))
            layerInfo.update(dict(  layername = "Wetlands",
                                    layerstyle = "LayerStyles/Wetlands.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(70)
        if loadVMWater8:
            post.update(dict(serviceNumber = str(8)))
            layerInfo.update(dict(  layername = "VM Watercourses-SEQ",
                                    layerstyle = "LayerStyles/VMWaterCourse.qml",
                                    geomtype = "MultiLineString"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(80)
        if loadVMWater7:
            post.update(dict(serviceNumber = str(7)))
            layerInfo.update(dict(  layername = "VM Watercourses QLD",
                                    layerstyle = "LayerStyles/VMWaterCourse.qml",
                                    geomtype = "MultiLineString"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(90)    
        if loadPPTM:
            post.update(dict(serviceNumber = str(201)))
            layerInfo.update(dict(  layername = "Protected Plant Trigger Map",
                                    layerstyle = "LayerStyles/PPTM.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(94)
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
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(95)
        if loadKoalaHA:
            post.update(dict(serviceNumber = str(3)))
            layerInfo.update(dict(  layername = "Koala Habitat Area-core",
                                    layerstyle = "LayerStyles/KoalaHabitatArea-core.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(96)
        if loadKoalaRA:
            post.update(dict(serviceNumber = str(6)))
            layerInfo.update(dict(  layername = "Koala Restoration Area",
                                    layerstyle = "LayerStyles/KoalaHabitatRestorationArea.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(97)
        if loadKoalaHAL:
            post.update(dict(serviceNumber = str(5)))
            layerInfo.update(dict(  layername = "Koala Habitat Area-locally refined",
                                    layerstyle = "LayerStyles/KoalaHabitatArea-LocallyRefined.qml",
                                    geomtype = "MultiPolygon"
                                    ))
            self.getNRlayer(post,layerInfo,context,feedback)
            feedback.setProgress(98)
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
                    #print("colour = ",colourCodeRGB)
                    layerInfo.update(dict(  colour = colourCodeRGB ))
                    LayerName='SLATS - '+LayerName
                    layerInfo.update(dict(  layername = LayerName,
                                            layerstyle = "LayerStyles/SLATS"+str(i+198)+".qml",
                                            geomtype = "MultiPolygon"
                                            ))
                    self.getNRlayer(post,layerInfo,context,feedback)
                    try: 
                        del layerInfo["colour"]
                    except KeyError:
                        pass
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