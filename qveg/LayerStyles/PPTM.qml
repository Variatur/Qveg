<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" simplifyMaxScale="1" labelsEnabled="0" simplifyDrawingHints="1" version="3.10.4-A Coruña" hasScaleBasedVisibilityFlag="0" simplifyDrawingTol="1" minScale="1e+08" simplifyLocal="1" simplifyAlgorithm="0" readOnly="0" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" forceraster="0" enableorderby="0" type="singleSymbol">
    <symbols>
      <symbol force_rhr="0" alpha="1" name="0" type="fill" clip_to_extent="1">
        <layer pass="0" locked="0" enabled="1" class="SimpleFill">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="170,255,0,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory height="15" barWidth="5" rotationOffset="270" maxScaleDenominator="1e+08" sizeType="MM" minScaleDenominator="0" opacity="1" lineSizeScale="3x:0,0,0,0,0,0" lineSizeType="MM" sizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up" minimumSize="0" backgroundColor="#ffffff" enabled="0" penColor="#000000" labelPlacementMethod="XHeight" scaleDependency="Area" penAlpha="255" penWidth="0" scaleBasedVisibility="0" width="15" backgroundAlpha="255">
      <fontProperties style="" description="Ubuntu,11,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" dist="0" showAll="1" linePlacementFlags="18" priority="0" placement="1" zIndex="0">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option value="0" name="allowedGapsBuffer" type="double"/>
        <Option value="false" name="allowedGapsEnabled" type="bool"/>
        <Option value="" name="allowedGapsLayer" type="QString"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <fieldConfiguration>
    <field name="HIGH_RISK">
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
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="HIGH_RISK"/>
    <alias name="" index="1" field="OBJECTID"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="HIGH_RISK"/>
    <default expression="" applyOnUpdate="0" field="OBJECTID"/>
  </defaults>
  <constraints>
    <constraint constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0" field="HIGH_RISK"/>
    <constraint constraints="3" unique_strength="1" exp_strength="0" notnull_strength="1" field="OBJECTID"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="HIGH_RISK"/>
    <constraint exp="" desc="" field="OBJECTID"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column hidden="0" name="HIGH_RISK" width="-1" type="field"/>
      <column hidden="0" name="OBJECTID" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
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
    <field editable="1" name="HIGH_RISK"/>
    <field editable="1" name="OBJECTID"/>
  </editable>
  <labelOnTop>
    <field name="HIGH_RISK" labelOnTop="0"/>
    <field name="OBJECTID" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>OBJECTID</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
