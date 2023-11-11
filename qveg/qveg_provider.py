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

from qgis.core import QgsProcessingProvider
from .qveg_algorithm import QvegAlgorithm
from .qbasemap_algorithm import QbasemapAlgorithm
from .qpdf_algorithm import QpdfAlgorithm
from .qshowre_algorithm import QshowreAlgorithm
from .qextent_algorithm import QextentAlgorithm
from PyQt5.QtGui import QIcon
import os
def resolve(name, basepath=None):
    if not basepath:
      basepath = os.path.dirname(os.path.realpath(__file__))
    return os.path.join(basepath, name)

class QvegProvider(QgsProcessingProvider):

    def __init__(self):
        """
        Default constructor.
        """
        QgsProcessingProvider.__init__(self)

    def unload(self):
        """
        Unloads the provider. Any tear-down steps required by the provider
        should be implemented here.
        """
        pass

    def loadAlgorithms(self):
        """
        Loads all algorithms belonging to this provider.
        """
        self.addAlgorithm(QvegAlgorithm())
        # add additional algorithms here
        self.addAlgorithm(QbasemapAlgorithm())
        self.addAlgorithm(QpdfAlgorithm())
        self.addAlgorithm(QshowreAlgorithm())
        self.addAlgorithm(QextentAlgorithm())

    def id(self):
        """
        Returns the unique provider id, used for identifying the provider. This
        string should be a unique, short, character only string, eg "qgis" or
        "gdal". This string should not be localised.
        """
        return 'Queensland'

    def name(self):
        """
        Returns the provider name, which is used to describe the provider
        within the GUI.

        This string should be short (e.g. "Lastools") and localised.
        """
        return self.tr('Queensland')

    def icon(self):
        """
        Should return a QIcon which is used for your provider inside
        the Processing toolbox.
        """
        return QgsProcessingProvider.icon(self)

    def longName(self):
        """
        Returns the a longer version of the provider name, which can include
        extra details such as version numbers. E.g. "Lastools LIDAR tools
        (version 2.2.1)". This string should be localised. The default
        implementation returns the same string as name().
        """
        return self.name()
    def icon(self):
        return QIcon(resolve("icon.png"))
