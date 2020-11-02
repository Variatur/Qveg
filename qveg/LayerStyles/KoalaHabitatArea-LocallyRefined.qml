<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.10.5-A Coruña" styleCategories="AllStyleCategories" readOnly="0" simplifyMaxScale="1" maxScale="0" simplifyLocal="1" simplifyDrawingHints="1" labelsEnabled="0" simplifyAlgorithm="0" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" enableorderby="0" type="singleSymbol" forceraster="0">
    <symbols>
      <symbol name="0" alpha="1" type="fill" force_rhr="0" clip_to_extent="1">
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="152,230,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
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
    <DiagramCategory labelPlacementMethod="XHeight" lineSizeType="MM" width="15" penAlpha="255" enabled="0" height="15" backgroundColor="#ffffff" barWidth="5" scaleBasedVisibility="0" lineSizeScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" opacity="1" sizeType="MM" diagramOrientation="Up" rotationOffset="270" backgroundAlpha="255" penWidth="0" maxScaleDenominator="1e+08" scaleDependency="Area" minScaleDenominator="0" penColor="#000000" minimumSize="0">
      <fontProperties style="" description="Ubuntu,11,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="1" priority="0" linePlacementFlags="18" obstacle="0" dist="0" zIndex="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
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
    <field name="OBJECTID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LRKH">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LGA_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="OBJECTID" index="0" name=""/>
    <alias field="LRKH" index="1" name=""/>
    <alias field="LGA_NAME" index="2" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="OBJECTID" expression="" applyOnUpdate="0"/>
    <default field="LRKH" expression="" applyOnUpdate="0"/>
    <default field="LGA_NAME" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="OBJECTID" notnull_strength="1" unique_strength="1" exp_strength="0" constraints="3"/>
    <constraint field="LRKH" notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0"/>
    <constraint field="LGA_NAME" notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="OBJECTID" exp="" desc=""/>
    <constraint field="LRKH" exp="" desc=""/>
    <constraint field="LGA_NAME" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column name="OBJECTID" hidden="0" width="-1" type="field"/>
      <column name="LRKH" hidden="0" width="-1" type="field"/>
      <column name="LGA_NAME" hidden="0" width="-1" type="field"/>
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
    <field name="LGA_NAME" editable="1"/>
    <field name="LRKH" editable="1"/>
    <field name="OBJECTID" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="LGA_NAME" labelOnTop="0"/>
    <field name="LRKH" labelOnTop="0"/>
    <field name="OBJECTID" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>LGA_NAME</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
