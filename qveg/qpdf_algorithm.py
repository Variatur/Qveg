# -*- coding: utf-8 -*-

"""
/***************************************************************************
 Qpdf
                                 A QGIS plugin
 Load basemaps from the Queensland governments feature and map servers
                              -------------------
        begin                : 2020-05-06
        updated              : 2020-04-25
        updated              : 2023-11-12
        copyright            : (C) 2020 by Gary Pattemore and Otto Pattemore
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

__author__ = 'Gary Pattemore and Otto Pattemore'
__date__ = '2023-11-12'
__copyright__ = '(C) 2020 by Gary Pattemore and Otto Pattemore'

# This will get replaced with a git SHA1 when you do a git archive
__revision__ = '$Format:%H$'
#
from qgis.gui import *
from qgis.core import *
from PyQt5.QtCore import QCoreApplication
from qgis.utils import iface
from PyQt5.QtXml import QDomDocument
from PyQt5.QtGui import QIcon
from pathlib import Path
import os
import math
from .query import resolve
#
class QpdfAlgorithm(QgsProcessingAlgorithm):
    """Exports the current map view to PDF"""
    TEMPLATE = 'TEMPLATE'
    PAGESIZE = 'PAGESIZE'
    OUTPUT = 'OUTPUT'
    TITLE = 'TITLE'
    NAME = 'NAME'
    DISCLAIMER = 'DISCLAIMER'
    LOGO = 'LOGO'
    IMAGE = 'IMAGE'
    LOADQUICK = 'LOADQUICK'
    #
    def flags(self):
        return super().flags() | QgsProcessingAlgorithm.FlagNoThreading

    def initAlgorithm(self, config=None):
        self.addParameter(
            QgsProcessingParameterEnum(
                self.PAGESIZE,
                self.tr('Select a page size'),
                ['A0','A3','A4'],
                defaultValue = '1',
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.TITLE,
                self.tr('Map Title'),
                defaultValue = 'Regional ecosystem map (regulated)',
            )
        )
        self.addParameter(
            QgsProcessingParameterString(
                self.NAME,
                self.tr('Map Creator name or initials or other free text (max. 5 lines, 25 characters/line, auto wrapping)'),
                defaultValue = 'Map created by: ',
                multiLine = True,
                optional = True
            )
        )
        self.addParameter(
            QgsProcessingParameterFile(
                self.DISCLAIMER,
                self.tr('Add disclaimer text file (*.txt and utf-8 encoded)'),
                optional = True,
            )
        )
        
        self.addParameter(
            QgsProcessingParameterFile(
                self.LOGO,
                self.tr('Add a logo (*.png or *.jpg)'),
                optional = True,
            )
        )
        
        self.addParameter(
            QgsProcessingParameterFile(
                self.IMAGE,
                self.tr('Add an image overlay to top-left of map area (*.png or *.jpg)'),
                optional = True,
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.LOADQUICK,
                self.tr('Checked = Quick map export to PDF \nUnchecked = Use Layout Manager (ignored for QGIS version <3.16 and <3.10.12 LTS)'),
                True
            )
        )
        self.addParameter(
            QgsProcessingParameterFileDestination(
                self.OUTPUT,
                self.tr('Output File'),
                'PDF File (*.pdf)'
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        #template = self.parameterAsFile(parameters, 'TEMPLATE', context)
        title = self.parameterAsString(parameters, 'TITLE', context)
        Name = self.parameterAsString(parameters, 'NAME', context)
        disclaimer = self.parameterAsFileOutput(parameters, 'DISCLAIMER', context)
        logo = self.parameterAsFileOutput(parameters, 'LOGO', context)
        image = self.parameterAsFileOutput(parameters, 'IMAGE', context)
        pdf = self.parameterAsFileOutput(parameters, 'OUTPUT', context)
        page_size = self.parameterAsEnum(parameters, 'PAGESIZE', context)
        quick = self.parameterAsBoolean(parameters, 'LOADQUICK', context)
        feedback.setProgress(10)
        #
        project = QgsProject.instance()
        canvas = iface.mapCanvas()
        canvasExtent = canvas.extent()
        #Check QGIS version to avoid precision bug #37755 (20-30 metre errors at a property scale). Fixed.
        if page_size == 0: page = 'A0'
        elif page_size == 1: page = 'A3'
        else: page = 'A4'
        page_size = page
        ver = QgsExpressionContextUtils.globalScope().variable('qgis_version_no')
        if not(ver>=31600 or (ver>=31011 and ver<31200)): quick = True
        if quick == True:
            project = context.project()
            layout = QgsLayout(project)
            layout.initializeDefaults()
            # Setup page
            pc = layout.pageCollection()
            pc.page(0).setPageSize(page_size, QgsLayoutItemPage.Orientation.Landscape)
            feedback.setProgress(20)
            # Choose the correct layout template
            template = resolve('PrintLayoutDefinitions/'+page_size+'.qpt')
            feedback.setProgress(25)
            # Load template from file
            with open(template) as f:
                template_content = f.read()
            doc = QDomDocument()
            doc.setContent(template_content)
            feedback.setProgress(30)
            #Load disclaimer from file but provide empty string if no file is provided
            try:
                with open(disclaimer, encoding="utf8") as f:
                    disclaimer_content = f.read()
                    f.close()
            except FileNotFoundError as e:
                feedback.setProgressText("No valid disclaimer provided - excluding")
                disclaimer_content = ''
            feedback.setProgress(40)
            layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
            # add title
            title_item = layout.itemById('Label1')
            title_item.setText(title)
            feedback.setProgress(50)
            #add Name 
            name_item = layout.itemById('Label2')
            name_item.setText(Name)
            feedback.setProgress(55)
            #add disclaimer
            disclaimer_item = layout.itemById('Disclaimer1')
            disclaimer_item.setText(disclaimer_content)
            feedback.setProgress(60)
            #add logo
            logo_item = layout.itemById('Logo1')
            try:
                logo_item.setPicturePath(logo)
            except FileNotFoundError as e:
                feedback.setProgressText("No valid logo file provided - setting to transparent")
                logo = resolve('PrintLayoutDefinitions/defaultLogo.png')
                logo_item.setPicturePath(logo)
            feedback.setProgress(70)
            #
            #add image overlay over part of map
            image_item = layout.itemById('Image1')
            try:
                image_item.setPicturePath(image)
            except FileNotFoundError as e:
                feedback.setProgressText("No valid image file provided - setting to transparent")
                logo = resolve('PrintLayoutDefinitions/defaultImage.png')
                logo_item.setPicturePath(image)
            feedback.setProgress(80)
            #Refresh ScaleBar
            scale_item = layout.itemById('ScaleBar')
            scale_item.update()
            #
            #Refresh map
            for item in layout.items():
                if item.type()==65639: # Map
                    item.zoomToExtent(canvas.extent())
            #
            feedback.setProgress(90)
            exporter = QgsLayoutExporter(layout)
            exporter.exportToPdf(pdf, QgsLayoutExporter.PdfExportSettings())
            feedback.setProgress(100)
            return {'OUTPUT': pdf}
        else:
            #Use print layout manager
            manager = project.layoutManager()
            layout = QgsPrintLayout(project)
            layoutName = title + '_' + page_size
            layout.initializeDefaults()
            layout.setName(layoutName)
            # Setup page
            pc = layout.pageCollection()
            pc.page(0).setPageSize(page_size, QgsLayoutItemPage.Orientation.Landscape)
            feedback.setProgress(20)
            #
            # Choose the correct layout template
            template = resolve('PrintLayoutDefinitions/'+page_size+'.qpt')
            feedback.setProgress(25)
            # Load template from file
            with open(template) as f:
                template_content = f.read()
            doc = QDomDocument()
            doc.setContent(template_content)
            layout.loadFromTemplate(doc, QgsReadWriteContext(), False)
            feedback.setProgress(30)
            #Load disclaimer from file but provide NULL file if no file is provided
            try:
                with open(disclaimer, encoding="utf8") as f:
                    disclaimer_content = f.read()
                    f.close()
            except FileNotFoundError as e:
                feedback.setProgressText("No valid disclaimer provided - excluding")
                disclaimer_content = ''
            feedback.setProgress(40)
            # add title
            title_item = layout.itemById('Label1')
            title_item.setText(title)
            feedback.setProgress(50)
            #add Name 
            name_item = layout.itemById('Label2')
            name_item.setText(Name)
            feedback.setProgress(55)
            #add disclaimer
            disclaimer_item = layout.itemById('Disclaimer1')
            disclaimer_item.setText(disclaimer_content)
            feedback.setProgress(60)
            #add logo
            logo_item = layout.itemById('Logo1')
            try:
                logo_item.setPicturePath(logo)
            except FileNotFoundError as e:
                feedback.setProgressText("No valid logo file provided - setting to transparent")
                logo = resolve('PrintLayoutDefinitions/defaultLogo.png')
                logo_item.setPicturePath(logo)
            feedback.setProgress(70)
            #
            #add image overlay over part of map
            image_item = layout.itemById('Image1')
            try:
                image_item.setPicturePath(image)
            except FileNotFoundError as e:
                feedback.setProgressText("No valid image file provided - setting to transparent")
                logo = resolve('PrintLayoutDefinitions/defaultImage.png')
                logo_item.setPicturePath(image)
            feedback.setProgress(80)
            #Refresh ScaleBar
            scale_item = layout.itemById('ScaleBar')
            scale_item.update()
            feedback.setProgress(90)
            #Refresh map
            for item in layout.items():
                if item.type()==65639: # Map
                    item.zoomToExtent(canvas.extent())
            #
            # Send to Layout Manager
            manager.addLayout(layout)
            feedback.setProgress(100)
            iface.showLayoutManager()
            return {'OUTPUT': pdf}

    def name(self):
        """
        Returns the algorithm name, used for identifying the algorithm. This
        string should be fixed for the algorithm, and must not be localised.
        The name should be unique within each provider. Names should contain
        lowercase alphanumeric characters only and no spaces or other
        formatting characters.
        """
        return 'Create geoPDF map'

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
        return QpdfAlgorithm()
    
    def icon(self):
        return QIcon(resolve("pdf.png"))

