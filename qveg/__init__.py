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
 This script initializes the plugin, making it known to QGIS.
"""

__author__ = 'Otto Pattemore and Gary Pattemore'
__date__ = '2020-05-06'
__copyright__ = '(C) 2020 by Otto Pattemore and Gary Pattemore'


# noinspection PyPep8Naming
def classFactory(iface):  # pylint: disable=invalid-name
    """Load Qveg class from file Qveg.

    :param iface: A QGIS interface instance.
    :type iface: QgsInterface
    """
    #
    from .qveg import QvegPlugin
    return QvegPlugin()
