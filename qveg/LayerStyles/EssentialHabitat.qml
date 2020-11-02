<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" styleCategories="AllStyleCategories" simplifyAlgorithm="0" maxScale="0" labelsEnabled="0" simplifyDrawingTol="1" simplifyMaxScale="1" minScale="100000000" simplifyDrawingHints="1" readOnly="0" hasScaleBasedVisibilityFlag="0" version="3.14.0-Pi">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal enabled="0" mode="0" startField="" startExpression="" endField="" endExpression="" fixedDuration="0" accumulate="0" durationUnit="min" durationField="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" forceraster="0" symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol name="0" alpha="1" clip_to_extent="1" force_rhr="0" type="fill">
        <layer locked="0" enabled="1" pass="0" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="122,182,245,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,38,115,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="b_diagonal"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions" value="&quot;OBJECTID&quot;"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory minScaleDenominator="0" spacing="0" penColor="#000000" backgroundAlpha="255" width="15" labelPlacementMethod="XHeight" scaleBasedVisibility="0" opacity="1" minimumSize="0" height="15" backgroundColor="#ffffff" spacingUnit="MM" lineSizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" maxScaleDenominator="1e+08" penWidth="0" sizeScale="3x:0,0,0,0,0,0" barWidth="5" diagramOrientation="Up" rotationOffset="270" showAxis="0" scaleDependency="Area" direction="1" sizeType="MM" enabled="0" penAlpha="255" spacingUnitScale="3x:0,0,0,0,0,0">
      <fontProperties description="Ubuntu,11,-1,5,50,0,0,0,0,0" style=""/>
      <attribute color="#000000" label="" field=""/>
      <axisSymbol>
        <symbol name="" alpha="1" clip_to_extent="1" force_rhr="0" type="line">
          <layer locked="0" enabled="1" pass="0" class="SimpleLine">
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="1" linePlacementFlags="18" priority="0" zIndex="0" showAll="1" dist="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option name="allowedGapsBuffer" value="0" type="double"/>
        <Option name="allowedGapsEnabled" value="false" type="bool"/>
        <Option name="allowedGapsLayer" value="" type="QString"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="EHAB">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="REGROWTH">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="RVM_CAT">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OBJECTID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="layer">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="path">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="EHAB"/>
    <alias name="" index="1" field="REGROWTH"/>
    <alias name="" index="2" field="RVM_CAT"/>
    <alias name="" index="3" field="OBJECTID"/>
    <alias name="" index="4" field="layer"/>
    <alias name="" index="5" field="path"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="EHAB" expression=""/>
    <default applyOnUpdate="0" field="REGROWTH" expression=""/>
    <default applyOnUpdate="0" field="RVM_CAT" expression=""/>
    <default applyOnUpdate="0" field="OBJECTID" expression=""/>
    <default applyOnUpdate="0" field="layer" expression=""/>
    <default applyOnUpdate="0" field="path" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="EHAB" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="REGROWTH" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="RVM_CAT" constraints="0"/>
    <constraint unique_strength="1" exp_strength="0" notnull_strength="1" field="OBJECTID" constraints="3"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="layer" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="path" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="EHAB"/>
    <constraint exp="" desc="" field="REGROWTH"/>
    <constraint exp="" desc="" field="RVM_CAT"/>
    <constraint exp="" desc="" field="OBJECTID"/>
    <constraint exp="" desc="" field="layer"/>
    <constraint exp="" desc="" field="path"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
    <actionsetting name="Create Google Earth KML file" icon="" shortTitle="" capture="0" id="{24fcaa65-49bf-4b3a-9197-f03baf910d88}" isEnabledOnlyWhenEditable="0" notificationMessage="" action="#############################################################################################################&#xa;#                       QGIS Action script for creating KML with styling                                    #&#xa;#                                                                                                           #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                written by Gary and Otto Pattemore                                         #&#xa;#                                released under Creative Commons Attribution 4.0                            #&#xa;#############################################################################################################&#xa;#&#xa;from qgis.core import QgsExpression&#xa;from qgis.PyQt.QtCore import QVariant&#xa;from PyQt5.QtWidgets import *&#xa;import processing&#xa;from qgis.utils import iface&#xa;from os import path&#xa;#&#xa;dir = os.path.expanduser('~')&#xa;print(dir)&#xa;# setup progress bar&#xa;progressMessageBar = iface.messageBar().createMessage(&quot;Styling and building Google KML file...&quot;)&#xa;progress = QProgressBar()&#xa;progress.setMaximum(100)&#xa;progress.setAlignment(Qt.AlignLeft|Qt.AlignVCenter)&#xa;progressMessageBar.layout().addWidget(progress)&#xa;iface.messageBar().pushWidget(progressMessageBar, Qgis.Info)&#xa;#&#xa;layer = iface.activeLayer()&#xa;layer.selectAll()&#xa;progress.setValue(1)&#xa;progress.setFormat(&quot;Styling KML...&quot;)&#xa;clone_layer = processing.run(&quot;native:saveselectedfeatures&quot;, {'INPUT': layer, 'OUTPUT': 'memory:'})['OUTPUT']&#xa;layer.removeSelection()&#xa;progress.setValue(2)&#xa;caps = clone_layer.dataProvider().capabilities()&#xa;if caps &amp; QgsVectorDataProvider.AddAttributes:&#xa;    res = clone_layer.dataProvider().addAttributes(&#xa;        [QgsField(&quot;OGR_STYLE&quot;, QVariant.String)])&#xa;    clone_layer.updateFields()&#xa;    progress.setValue(10)&#xa;    #&#xa;    clone_layer.startEditing()&#xa;    totalf = clone_layer.featureCount()&#xa;    for i,feat in enumerate(clone_layer.getFeatures()):&#xa;        expr1 = 'Essential Habitat'&#xa;        expr3 = 'BRUSH(fc:#ff0000,bc:#7ab6f5,id:&quot;ogr-brush-5&quot;);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr1+'&quot;)'&#xa;        feat['OGR_STYLE'] = expr3&#xa;        clone_layer.updateFeature(feat)&#xa;        progress.setValue(int(i/totalf*40)+10)&#xa;    clone_layer.commitChanges()&#xa;#&#xa;progress.setValue(50)&#xa;progress.setFormat(&quot;Building Google KML file...  (may take a while)&quot;)&#xa;preferedName = str(&quot;[% concat(@layer_name ,'_', now()) %]&quot;)[:-10]&#xa;preferedName = dir+'/'+preferedName+'.kml'&#xa;fname, _ = QFileDialog.getSaveFileName(None, &quot;Save Google KML file&quot;, preferedName, &quot;Google KML (*.kml)&quot;)&#xa;project = QgsProject.instance()&#xa;canvas = iface.mapCanvas()&#xa;canvasExtent = canvas.extent()&#xa;xmin = str(canvasExtent.xMinimum())&#xa;ymin = str(canvasExtent.yMinimum())&#xa;xmax = str(canvasExtent.xMaximum())&#xa;ymax = str(canvasExtent.yMaximum())&#xa;ExtentString = xmin+&quot; &quot;+ymin+&quot; &quot;+xmax+&quot; &quot;+ymax&#xa;# building options string for consistency with other Actions - but will not clip EH map.&#xa;options = '-clipsrc '+ExtentString&#xa;progress.setValue(60)&#xa;kml_layer = processing.run(&quot;gdal:convertformat&quot;, {'INPUT': clone_layer, 'OUTPUT': str(fname)})['OUTPUT']&#xa;progress.setValue(100)&#xa;iface.messageBar().clearWidgets()&#xa;QMessageBox.about(None, &quot;Create Google KML&quot;, &quot;Google KML file saved as: &quot;+fname+'\n\nNote: standard formatting for Essential Habitat layers is not possible in Google KML files. Solid red was used instead.')&#xa;#&#xa;#&#xa;&#xa;" type="1">
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column name="EHAB" hidden="0" width="-1" type="field"/>
      <column name="REGROWTH" hidden="0" width="-1" type="field"/>
      <column name="RVM_CAT" hidden="0" width="-1" type="field"/>
      <column name="OBJECTID" hidden="0" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
      <column name="layer" hidden="0" width="-1" type="field"/>
      <column name="path" hidden="0" width="1228" type="field"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="EHAB" editable="1"/>
    <field name="OBJECTID" editable="1"/>
    <field name="REGROWTH" editable="1"/>
    <field name="RVM_CAT" editable="1"/>
    <field name="layer" editable="1"/>
    <field name="path" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="EHAB" labelOnTop="0"/>
    <field name="OBJECTID" labelOnTop="0"/>
    <field name="REGROWTH" labelOnTop="0"/>
    <field name="RVM_CAT" labelOnTop="0"/>
    <field name="layer" labelOnTop="0"/>
    <field name="path" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"OBJECTID"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
