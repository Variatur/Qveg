<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" labelsEnabled="1" version="3.22.4-Białowieża" simplifyMaxScale="1" readOnly="0" simplifyDrawingTol="1" minScale="100000000" simplifyDrawingHints="1" symbologyReferenceScale="-1" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" simplifyAlgorithm="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal enabled="0" endExpression="" durationUnit="min" mode="0" limitMode="0" startExpression="" startField="" durationField="" fixedDuration="0" accumulate="0" endField="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="1" attr="TRIM(IF(&quot;S20AH&quot; IS NULL, &quot;VM_STATUS&quot;, CONCAT(&quot;VM_STATUS&quot;,&quot;S20AH&quot;)))&#xa;" referencescale="-1" enableorderby="0" type="categorizedSymbol" forceraster="0">
    <categories>
      <category render="true" symbol="0" value="rem_end" label="Category A or B area containing endangered"/>
      <category render="true" symbol="1" value="rem_oc" label="Category A or B area containing of concern"/>
      <category render="true" symbol="2" value="rem_leastc" label="Category A or B area that is least concern"/>
      <category render="true" symbol="3" value="rem_endVMA S20AH area" label="Category A or B area containing endangered and is S20AH"/>
      <category render="true" symbol="4" value="rem_ocVMA S20AH area" label="Category A or B area containing of concern and is S20AH"/>
      <category render="true" symbol="5" value="rem_leastcVMA S20AH area" label="Category A or B area that is least concern and is S20AH"/>
      <category render="true" symbol="6" value="hvr_end" label="Category C or R area containing endangered"/>
      <category render="true" symbol="7" value="hvr_oc" label="Category C or R area containing of concern"/>
      <category render="true" symbol="8" value="hvr_leastc" label="Category C or R area that is of least concern"/>
      <category render="true" symbol="9" value="water VMA S20AH area" label="Water (S20AH)"/>
      <category render="true" symbol="10" value="water" label="Water"/>
      <category render="true" symbol="11" value="non_remnant" label="Category X area"/>
      <category render="false" symbol="12" value="" label="Not defined or map rendering error"/>
    </categories>
    <symbols>
      <symbol name="0" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,54,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="101,101,101,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,54,255,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="101,101,101,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,101,15,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="101,101,101,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,101,15,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="101,101,101,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="10" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="225,255,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="225,255,255,255" k="color"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="11" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="254,255,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="2,2,2,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="254,255,255,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="2,2,2,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="12" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="ShapeburstFill" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option name="blur_radius" type="QString" value="0"/>
            <Option name="color" type="QString" value="50,6,54,255"/>
            <Option name="color1" type="QString" value="0,0,255,255"/>
            <Option name="color2" type="QString" value="0,255,0,255"/>
            <Option name="color_type" type="QString" value="0"/>
            <Option name="discrete" type="QString" value="0"/>
            <Option name="distance_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="distance_unit" type="QString" value="MM"/>
            <Option name="gradient_color2" type="QString" value="255,255,255,255"/>
            <Option name="ignore_rings" type="QString" value="0"/>
            <Option name="max_distance" type="QString" value="5"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="rampType" type="QString" value="gradient"/>
            <Option name="use_whole_shape" type="QString" value="1"/>
          </Option>
          <prop v="0" k="blur_radius"/>
          <prop v="50,6,54,255" k="color"/>
          <prop v="0,0,255,255" k="color1"/>
          <prop v="0,255,0,255" k="color2"/>
          <prop v="0" k="color_type"/>
          <prop v="0" k="discrete"/>
          <prop v="3x:0,0,0,0,0,0" k="distance_map_unit_scale"/>
          <prop v="MM" k="distance_unit"/>
          <prop v="255,255,255,255" k="gradient_color2"/>
          <prop v="0" k="ignore_rings"/>
          <prop v="5" k="max_distance"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="gradient" k="rampType"/>
          <prop v="1" k="use_whole_shape"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="125,255,177,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="101,101,101,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="125,255,177,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="101,101,101,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,54,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="255,255,115,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1.7"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,54,255,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="255,255,115,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1.7" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="4" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,101,15,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="255,255,115,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1.7"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,101,15,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="255,255,115,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1.7" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="5" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="125,255,177,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="255,255,115,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1.7"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="125,255,177,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="255,255,115,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1.7" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="6" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,168,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="168,0,0,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,168,255,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="168,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="7" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,208,145,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="168,0,0,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,208,145,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="168,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="8" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="215,255,177,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="168,0,0,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="1"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="215,255,177,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="168,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="9" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="225,255,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_unit" type="QString" value="Point"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="225,255,255,255" k="color"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontKerning="1" textOpacity="1" fontWeight="50" previewBkgrdColor="255,255,255,255" fontSize="6" fontItalic="0" fontStrikeout="0" fontLetterSpacing="0" isExpression="1" legendString="Aa" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontFamily="Sans Serif" multilineHeight="1" useSubstitutions="0" capitalization="0" fontWordSpacing="0" namedStyle="Normal" textOrientation="horizontal" fontUnderline="0" blendMode="0" fieldName="CONCAT(&quot;RE&quot;, '\n', &quot;PC_LABEL&quot; )" textColor="0,0,0,255" fontSizeUnit="Point" allowHtml="0">
        <families/>
        <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferNoFill="1" bufferBlendMode="0" bufferSize="0.69999999999999996" bufferDraw="1" bufferOpacity="1"/>
        <text-mask maskOpacity="1" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSize="0" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0"/>
        <background shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeSizeY="0" shapeOpacity="1" shapeOffsetX="0" shapeOffsetY="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeRadiiUnit="MM" shapeBorderWidthUnit="MM" shapeSizeX="0" shapeType="0" shapeFillColor="255,255,255,255" shapeRadiiY="0" shapeBlendMode="0" shapeSizeUnit="MM" shapeRotation="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderColor="128,128,128,255">
          <symbol name="markerSymbol" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
              <Option type="Map">
                <Option name="angle" type="QString" value="0"/>
                <Option name="cap_style" type="QString" value="square"/>
                <Option name="color" type="QString" value="145,82,45,255"/>
                <Option name="horizontal_anchor_point" type="QString" value="1"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="name" type="QString" value="circle"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="35,35,35,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="scale_method" type="QString" value="diameter"/>
                <Option name="size" type="QString" value="2"/>
                <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="size_unit" type="QString" value="MM"/>
                <Option name="vertical_anchor_point" type="QString" value="1"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="square" k="cap_style"/>
              <prop v="145,82,45,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="circle" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="2" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol name="fillSymbol" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleFill" enabled="1" pass="0" locked="0">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="255,255,255,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="128,128,128,255"/>
                <Option name="outline_style" type="QString" value="no"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
              <prop v="255,255,255,255" k="color"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="128,128,128,255" k="outline_color"/>
              <prop v="no" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="solid" k="style"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowOpacity="0.69999999999999996" shadowScale="100" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowBlendMode="6" shadowUnder="0" shadowColor="0,0,0,255" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowDraw="0" shadowOffsetUnit="MM"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format formatNumbers="0" decimals="3" plussign="0" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" reverseDirectionSymbol="0" wrapChar="" autoWrapLength="0" multilineAlign="1" placeDirectionSymbol="0"/>
      <placement distMapUnitScale="3x:0,0,0,0,0,0" rotationUnit="AngleDegrees" offsetType="0" dist="0" geometryGeneratorEnabled="0" centroidWhole="0" maxCurvedCharAngleOut="-25" centroidInside="1" fitInPolygonOnly="0" layerType="PolygonGeometry" quadOffset="4" repeatDistanceUnits="MM" offsetUnits="MM" placementFlags="10" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placement="0" yOffset="0" distUnits="MM" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" lineAnchorType="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGeneratorType="PointGeometry" xOffset="0" maxCurvedCharAngleIn="25" overrunDistance="0" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="10" repeatDistance="0" geometryGenerator="" rotationAngle="0" overrunDistanceUnit="MM" preserveRotation="1"/>
      <rendering scaleVisibility="0" minFeatureSize="1" mergeLines="0" obstacle="0" scaleMax="0" obstacleType="1" scaleMin="0" upsidedownLabels="0" fontLimitPixelSize="0" zIndex="0" limitNumLabels="0" fontMinPixelSize="3" labelPerPart="0" drawLabels="1" obstacleFactor="2" maxNumLabels="2000" unplacedVisibility="0" fontMaxPixelSize="10000" displayAll="0"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" type="QString" value=""/>
          <Option name="properties"/>
          <Option name="type" type="QString" value="collection"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
          <Option name="blendMode" type="int" value="0"/>
          <Option name="ddProperties" type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
          <Option name="drawToAllParts" type="bool" value="false"/>
          <Option name="enabled" type="QString" value="0"/>
          <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
          <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
          <Option name="minLength" type="double" value="0"/>
          <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="minLengthUnit" type="QString" value="MM"/>
          <Option name="offsetFromAnchor" type="double" value="0"/>
          <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
          <Option name="offsetFromLabel" type="double" value="0"/>
          <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option name="dualview/previewExpressions" type="List">
        <Option type="QString" value="&quot;vm_stat_id&quot;"/>
      </Option>
      <Option name="embeddedWidgets/0/id" type="QString" value="transparency"/>
      <Option name="embeddedWidgets/count" type="QString" value="1"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory diagramOrientation="Up" spacing="0" backgroundColor="#ffffff" minimumSize="0" penWidth="0" height="15" enabled="0" penAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" labelPlacementMethod="XHeight" scaleDependency="Area" width="15" direction="1" penColor="#000000" spacingUnitScale="3x:0,0,0,0,0,0" barWidth="5" maxScaleDenominator="1e+08" opacity="1" spacingUnit="MM" sizeScale="3x:0,0,0,0,0,0" scaleBasedVisibility="0" lineSizeType="MM" showAxis="0" sizeType="MM" rotationOffset="270" minScaleDenominator="0">
      <fontProperties description="Ubuntu,11,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" label=""/>
      <axisSymbol>
        <symbol name="" type="line" clip_to_extent="1" force_rhr="0" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="5;2"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="35,35,35,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.26"/>
              <Option name="line_width_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="trim_distance_end" type="QString" value="0"/>
              <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_end_unit" type="QString" value="MM"/>
              <Option name="trim_distance_start" type="QString" value="0"/>
              <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_start_unit" type="QString" value="MM"/>
              <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
              <Option name="use_custom_dash" type="QString" value="0"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="trim_distance_end"/>
            <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
            <prop v="MM" k="trim_distance_end_unit"/>
            <prop v="0" k="trim_distance_start"/>
            <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
            <prop v="MM" k="trim_distance_start_unit"/>
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="1" showAll="1" dist="0" obstacle="0" priority="0" zIndex="0">
    <properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option name="allowedGapsBuffer" type="double" value="0"/>
        <Option name="allowedGapsEnabled" type="bool" value="false"/>
        <Option name="allowedGapsLayer" type="QString" value=""/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend showLabelLegend="0" type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="fid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="objectid" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="re" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="re1" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="re2" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="re3" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="re4" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="re5" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="percent" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pc1" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pc2" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pc3" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pc4" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pc5" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="re_label" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pc_label" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="landzone" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="bd_status" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="bd_symbol" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="vm_class" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="vm_symbol" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="vm_poly" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="version" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="l" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="v" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="bvg1m" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="bvg1m_pc" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="dbvg1m" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="dbvg2m" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="dbvg5m" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="s20am" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="s20an" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="source" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="vm_status" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="vm_stat_id" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="scale" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="layer" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="path" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="fid"/>
    <alias index="1" name="" field="objectid"/>
    <alias index="2" name="" field="re"/>
    <alias index="3" name="" field="re1"/>
    <alias index="4" name="" field="re2"/>
    <alias index="5" name="" field="re3"/>
    <alias index="6" name="" field="re4"/>
    <alias index="7" name="" field="re5"/>
    <alias index="8" name="" field="percent"/>
    <alias index="9" name="" field="pc1"/>
    <alias index="10" name="" field="pc2"/>
    <alias index="11" name="" field="pc3"/>
    <alias index="12" name="" field="pc4"/>
    <alias index="13" name="" field="pc5"/>
    <alias index="14" name="" field="re_label"/>
    <alias index="15" name="" field="pc_label"/>
    <alias index="16" name="" field="landzone"/>
    <alias index="17" name="" field="bd_status"/>
    <alias index="18" name="" field="bd_symbol"/>
    <alias index="19" name="" field="vm_class"/>
    <alias index="20" name="" field="vm_symbol"/>
    <alias index="21" name="" field="vm_poly"/>
    <alias index="22" name="" field="version"/>
    <alias index="23" name="" field="l"/>
    <alias index="24" name="" field="v"/>
    <alias index="25" name="" field="bvg1m"/>
    <alias index="26" name="" field="bvg1m_pc"/>
    <alias index="27" name="" field="dbvg1m"/>
    <alias index="28" name="" field="dbvg2m"/>
    <alias index="29" name="" field="dbvg5m"/>
    <alias index="30" name="" field="s20am"/>
    <alias index="31" name="" field="s20an"/>
    <alias index="32" name="" field="source"/>
    <alias index="33" name="" field="vm_status"/>
    <alias index="34" name="" field="vm_stat_id"/>
    <alias index="35" name="" field="scale"/>
    <alias index="36" name="" field="layer"/>
    <alias index="37" name="" field="path"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" field="fid" expression=""/>
    <default applyOnUpdate="0" field="objectid" expression=""/>
    <default applyOnUpdate="0" field="re" expression=""/>
    <default applyOnUpdate="0" field="re1" expression=""/>
    <default applyOnUpdate="0" field="re2" expression=""/>
    <default applyOnUpdate="0" field="re3" expression=""/>
    <default applyOnUpdate="0" field="re4" expression=""/>
    <default applyOnUpdate="0" field="re5" expression=""/>
    <default applyOnUpdate="0" field="percent" expression=""/>
    <default applyOnUpdate="0" field="pc1" expression=""/>
    <default applyOnUpdate="0" field="pc2" expression=""/>
    <default applyOnUpdate="0" field="pc3" expression=""/>
    <default applyOnUpdate="0" field="pc4" expression=""/>
    <default applyOnUpdate="0" field="pc5" expression=""/>
    <default applyOnUpdate="0" field="re_label" expression=""/>
    <default applyOnUpdate="0" field="pc_label" expression=""/>
    <default applyOnUpdate="0" field="landzone" expression=""/>
    <default applyOnUpdate="0" field="bd_status" expression=""/>
    <default applyOnUpdate="0" field="bd_symbol" expression=""/>
    <default applyOnUpdate="0" field="vm_class" expression=""/>
    <default applyOnUpdate="0" field="vm_symbol" expression=""/>
    <default applyOnUpdate="0" field="vm_poly" expression=""/>
    <default applyOnUpdate="0" field="version" expression=""/>
    <default applyOnUpdate="0" field="l" expression=""/>
    <default applyOnUpdate="0" field="v" expression=""/>
    <default applyOnUpdate="0" field="bvg1m" expression=""/>
    <default applyOnUpdate="0" field="bvg1m_pc" expression=""/>
    <default applyOnUpdate="0" field="dbvg1m" expression=""/>
    <default applyOnUpdate="0" field="dbvg2m" expression=""/>
    <default applyOnUpdate="0" field="dbvg5m" expression=""/>
    <default applyOnUpdate="0" field="s20am" expression=""/>
    <default applyOnUpdate="0" field="s20an" expression=""/>
    <default applyOnUpdate="0" field="source" expression=""/>
    <default applyOnUpdate="0" field="vm_status" expression=""/>
    <default applyOnUpdate="0" field="vm_stat_id" expression=""/>
    <default applyOnUpdate="0" field="scale" expression=""/>
    <default applyOnUpdate="0" field="layer" expression=""/>
    <default applyOnUpdate="0" field="path" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" constraints="3" field="fid" notnull_strength="1" exp_strength="0"/>
    <constraint unique_strength="1" constraints="3" field="objectid" notnull_strength="1" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="re" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="re1" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="re2" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="re3" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="re4" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="re5" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="percent" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="pc1" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="pc2" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="pc3" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="pc4" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="pc5" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="re_label" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="pc_label" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="landzone" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="bd_status" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="bd_symbol" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="vm_class" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="vm_symbol" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="vm_poly" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="version" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="l" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="v" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="bvg1m" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="bvg1m_pc" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="dbvg1m" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="dbvg2m" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="dbvg5m" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="s20am" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="s20an" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="source" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="vm_status" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="vm_stat_id" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="scale" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="layer" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="path" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="fid" desc=""/>
    <constraint exp="" field="objectid" desc=""/>
    <constraint exp="" field="re" desc=""/>
    <constraint exp="" field="re1" desc=""/>
    <constraint exp="" field="re2" desc=""/>
    <constraint exp="" field="re3" desc=""/>
    <constraint exp="" field="re4" desc=""/>
    <constraint exp="" field="re5" desc=""/>
    <constraint exp="" field="percent" desc=""/>
    <constraint exp="" field="pc1" desc=""/>
    <constraint exp="" field="pc2" desc=""/>
    <constraint exp="" field="pc3" desc=""/>
    <constraint exp="" field="pc4" desc=""/>
    <constraint exp="" field="pc5" desc=""/>
    <constraint exp="" field="re_label" desc=""/>
    <constraint exp="" field="pc_label" desc=""/>
    <constraint exp="" field="landzone" desc=""/>
    <constraint exp="" field="bd_status" desc=""/>
    <constraint exp="" field="bd_symbol" desc=""/>
    <constraint exp="" field="vm_class" desc=""/>
    <constraint exp="" field="vm_symbol" desc=""/>
    <constraint exp="" field="vm_poly" desc=""/>
    <constraint exp="" field="version" desc=""/>
    <constraint exp="" field="l" desc=""/>
    <constraint exp="" field="v" desc=""/>
    <constraint exp="" field="bvg1m" desc=""/>
    <constraint exp="" field="bvg1m_pc" desc=""/>
    <constraint exp="" field="dbvg1m" desc=""/>
    <constraint exp="" field="dbvg2m" desc=""/>
    <constraint exp="" field="dbvg5m" desc=""/>
    <constraint exp="" field="s20am" desc=""/>
    <constraint exp="" field="s20an" desc=""/>
    <constraint exp="" field="source" desc=""/>
    <constraint exp="" field="vm_status" desc=""/>
    <constraint exp="" field="vm_stat_id" desc=""/>
    <constraint exp="" field="scale" desc=""/>
    <constraint exp="" field="layer" desc=""/>
    <constraint exp="" field="path" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{3cc04ef1-3911-456d-8da4-9409cb569542}"/>
    <actionsetting shortTitle="" name="RE description" icon="" capture="0" type="1" notificationMessage="" action="#############################################################################################################&#xa;#                       QGIS Action script for extracting info from                                         #&#xa;#                           https://www.data.qld.gov.au/dataset/                                            #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                               By Otto Pattemore                                           #&#xa;#                                                                                                           #&#xa;#############################################################################################################&#xa;import processing&#xa;import re&#xa;import json&#xa;from PyQt5.QtWidgets import *&#xa;from PyQt5.QtGui import *&#xa;class TableMessageBox(QMessageBox):&#xa;    def __init__(self,title, fields,records):&#xa;        QMessageBox.__init__(self)&#xa;        self.setSizeGripEnabled (True)&#xa;        self.records = records&#xa;        self.fields = fields&#xa;        self.setWindowTitle (title)&#xa;&#xa;        #Create QPushButton in QMessageBox        &#xa;        self.addButton (QPushButton('OK'), QMessageBox.YesRole)&#xa;        #Add TableWidget to QMessageBox           &#xa;        self.addTableWidget (self) &#xa;&#xa;        #Return values while clicking QPushButton        &#xa;        currentClick    = self.exec_() &#xa;&#xa;    #Create TableWidget &#xa;    def addTableWidget (self, parentItem):&#xa;        self.tableWidget = QTableWidget(parentItem)&#xa;        self.tableWidget.setGeometry (QtCore.QRect(0, 0, 925, 500))&#xa;        self.tableWidget.setObjectName ('tableWidget')&#xa;        print(len(self.records))&#xa;        self.tableWidget.setColumnCount(len(self.fields))&#xa;        self.tableWidget.setRowCount(len(self.records[&quot;RE&quot;])+1)&#xa;        for row in range(0,len(self.fields)):&#xa;                table_item = QTableWidgetItem(self.fields[row])&#xa;                font = QFont()&#xa;                font.setBold(True)&#xa;                table_item.setFont(font)&#xa;                self.tableWidget.setItem (0,row,table_item)&#xa;                table_item.setBackground(QColor(&quot;green&quot;))&#xa;                for column in range(0,len(self.records[self.fields[row]])):&#xa;                    self.tableWidget.setItem (column+1,row,QTableWidgetItem(self.records[self.fields[row]][column]))&#xa;        #font = QFont()&#xa;        #font.setBold(True)&#xa;        #self.tableWidget.setHeaderFont(font)&#xa;        self.tableWidget.setWordWrap(True)&#xa;        self.tableWidget.setColumnWidth(1,400)&#xa;        self.tableWidget.setColumnWidth(2,150)&#xa;        self.tableWidget.resizeRowsToContents()&#xa;    #Allow resizing of QMessageBox&#xa;    def event(self, e):&#xa;        result = QMessageBox.event(self, e)&#xa;        self.setMinimumWidth(1025)&#xa;        self.setMaximumWidth(16777215)&#xa;        self.setMinimumHeight(400)&#xa;        self.setMaximumHeight(16777215)        &#xa;        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)&#xa;&#xa;        return result&#xa;def GetJSON(URL):&#xa;    #This method of server access avoids firewall problems&#xa;    params = {&#xa;        'URL' : URL,&#xa;        'OUTPUT' : &quot;TEMPORARY_OUTPUT&quot;&#xa;    }&#xa;    tempLayer = processing.run('native:filedownloader',params)[&quot;OUTPUT&quot;]&#xa;    file = open(tempLayer)&#xa;    return_string = file.read()&#xa;    file.close()&#xa;    return return_string&#xa;# Get REs and remove alphabetic characters if they are present&#xa;RE1 = str(&quot;[%RE1%]&quot;)&#xa;RE1 = re.sub(&quot;[^0-9.-]+&quot;,'',RE1)&#xa;RE2 = str(&quot;[%RE2%]&quot;)&#xa;RE2 = re.sub(&quot;[^0-9.-]+&quot;,'',RE2)&#xa;RE3 = str(&quot;[%RE3%]&quot;)&#xa;RE3 = re.sub(&quot;[^0-9.-]+&quot;,'',RE3)&#xa;RE4 = str(&quot;[%RE4%]&quot;)&#xa;RE4 = re.sub(&quot;[^0-9.-]+&quot;,'',RE4)&#xa;RE5 = str(&quot;[%RE5%]&quot;)&#xa;RE5 = re.sub(&quot;[^0-9.-]+&quot;,'',RE5)&#xa;res = [RE1,RE2,RE3,RE4,RE5]&#xa;short_descriptions = []&#xa;vma_classes = []&#xa;structure = []&#xa;for i in res:&#xa;    url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?resource_id=adb569fd-c660-40ad-a4ed-2b9c3eda7023&amp;filters={&quot;re_id&quot;:&quot;'+str(i)+'&quot;}'&#xa;    json_data = json.loads(GetJSON(url))&#xa;    for j in json_data['result']['records']:&#xa;        short_descriptions.append(j[&quot;Short Description&quot;])&#xa;        vma_classes.append(j[&quot;vma_class&quot;])&#xa;        structure.append(j[&quot;Structure category&quot;])&#xa;&#xa;msg = TableMessageBox('Regional Ecosystem(s)',[&quot;RE&quot;,&quot;Short description&quot;,&quot;VMA class&quot;,&quot;Structure&quot;],{&#xa;    &quot;RE&quot;:res,&#xa;    &quot;Short description&quot;:short_descriptions,&#xa;    &quot;VMA class&quot;:vma_classes,&#xa;    &quot;Structure&quot;:structure&#xa;})" id="{ecb5e9bd-a6d1-4280-9d67-37383f163a58}" isEnabledOnlyWhenEditable="0">
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting shortTitle="" name="Create Google Earth KML file" icon="" capture="0" type="1" notificationMessage="" action="#############################################################################################################&#xa;#                       QGIS Action script for creating KML with styling                                    #&#xa;#                                                                                                           #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                written by Gary and Otto Pattemore                                         #&#xa;#                                released under Creative Commons Attribution 4.0                            #&#xa;#############################################################################################################&#xa;#&#xa;from qgis.core import QgsExpression&#xa;from qgis.PyQt.QtCore import *&#xa;from PyQt5.QtWidgets import *&#xa;import processing&#xa;from qgis.utils import iface&#xa;from os import path&#xa;#&#xa;dir = os.path.expanduser('~')&#xa;# setup progress bar&#xa;progressMessageBar = iface.messageBar().createMessage(&quot;Styling and building Google KML file...&quot;)&#xa;progress = QProgressBar()&#xa;progress.setMaximum(100)&#xa;progress.setAlignment(Qt.AlignLeft|Qt.AlignVCenter)&#xa;progressMessageBar.layout().addWidget(progress)&#xa;iface.messageBar().pushWidget(progressMessageBar, Qgis.Info)&#xa;#&#xa;layer = iface.activeLayer()&#xa;layer.selectAll()&#xa;progress.setValue(1)&#xa;progress.setFormat(&quot;Styling KML...&quot;)&#xa;clone_layer = processing.run(&quot;native:saveselectedfeatures&quot;, {'INPUT': layer, 'OUTPUT': 'memory:'})['OUTPUT']&#xa;layer.removeSelection()&#xa;progress.setValue(2)&#xa;caps = clone_layer.dataProvider().capabilities()&#xa;if caps &amp; QgsVectorDataProvider.AddAttributes:&#xa;    res = clone_layer.dataProvider().addAttributes(&#xa;        [QgsField(&quot;K_Name&quot;, QVariant.String),&#xa;        QgsField(&quot;K_Status&quot;, QVariant.String),&#xa;        QgsField(&quot;OGR_STYLE&quot;, QVariant.String)])&#xa;    clone_layer.updateFields()&#xa;    progress.setValue(10)&#xa;    #&#xa;    clone_layer.startEditing()&#xa;    totalf = clone_layer.featureCount()&#xa;    for i,feat in enumerate(clone_layer.getFeatures()):&#xa;        expr1 = str(feat['RE_LABEL']+' ('+feat['PC_LABEL']+')')&#xa;        expr4 = 'Supporting Map'+' '+expr1&#xa;        expr2 = str(feat['VM_STATUS'])&#xa;        if expr2 =='rem_end':&#xa;            expr3 = 'BRUSH(fc:#ff36ff);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='rem_oc':&#xa;            expr3 = 'BRUSH(fc:#ff650f);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='rem_leastc':&#xa;            expr3 = 'BRUSH(fc:#7dffb1);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='hvr_end':&#xa;            expr3 = 'BRUSH(fc:#ffa8ff);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='hvr_oc':&#xa;            expr3 = 'BRUSH(fc:#ffd091);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='hvr_leastc':&#xa;            expr3 = 'BRUSH(fc:#d7ffb1);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 == 'non_remnant':&#xa;            expr3 = 'BRUSH(fc:#feffff);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 == 'water':&#xa;            expr3 = 'BRUSH(fc:#e1ffff);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        else:&#xa;            expr3 = 'BRUSH(fc:#ff0000);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        #print(expr1, ' ' , expr2, ' ' , expr3, ' ')&#xa;        feat['K_Name'] = expr1&#xa;        feat['K_Status'] = expr2&#xa;        feat['OGR_STYLE'] = expr3&#xa;        clone_layer.updateFeature(feat)&#xa;        progress.setValue(int(i/totalf*40)+10)&#xa;    clone_layer.commitChanges()&#xa;    #&#xa;#&#xa;progress.setValue(50)&#xa;progress.setFormat(&quot;Building Google KML file...  (may take a while)&quot;)&#xa;preferedName = str(&quot;[% concat(@layer_name ,'_', now()) %]&quot;)[:-10]&#xa;preferedName = dir+'/'+preferedName+'.kml'&#xa;fname, _ = QFileDialog.getSaveFileName(None, &quot;Save Google KML file&quot;, preferedName, &quot;Google KML (*.kml)&quot;)&#xa;project = QgsProject.instance()&#xa;canvas = iface.mapCanvas()&#xa;canvasExtent = canvas.extent()&#xa;xmin = str(canvasExtent.xMinimum())&#xa;ymin = str(canvasExtent.yMinimum())&#xa;xmax = str(canvasExtent.xMaximum())&#xa;ymax = str(canvasExtent.yMaximum())&#xa;ExtentString = xmin+&quot; &quot;+ymin+&quot; &quot;+xmax+&quot; &quot;+ymax&#xa;options = '-clipsrc '+ExtentString&#xa;progress.setValue(60)&#xa;kml_layer = processing.run(&quot;gdal:convertformat&quot;, {'INPUT': clone_layer, 'OPTIONS': options, 'OUTPUT': str(fname)})['OUTPUT']&#xa;progress.setValue(100)&#xa;iface.messageBar().clearWidgets()&#xa;QMessageBox.about(None, &quot;Create Google KML&quot;, &quot;Google KML file saved as: &quot;+fname)&#xa;#&#xa;#&#xa;&#xa;" id="{3cc04ef1-3911-456d-8da4-9409cb569542}" isEnabledOnlyWhenEditable="0">
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" name="layer" type="field" width="-1"/>
      <column hidden="0" name="path" type="field" width="-1"/>
      <column hidden="0" name="objectid" type="field" width="-1"/>
      <column hidden="0" name="re" type="field" width="-1"/>
      <column hidden="0" name="re1" type="field" width="-1"/>
      <column hidden="0" name="re2" type="field" width="-1"/>
      <column hidden="0" name="re3" type="field" width="-1"/>
      <column hidden="0" name="re4" type="field" width="-1"/>
      <column hidden="0" name="re5" type="field" width="-1"/>
      <column hidden="0" name="percent" type="field" width="-1"/>
      <column hidden="0" name="pc1" type="field" width="-1"/>
      <column hidden="0" name="pc2" type="field" width="-1"/>
      <column hidden="0" name="pc3" type="field" width="-1"/>
      <column hidden="0" name="pc4" type="field" width="-1"/>
      <column hidden="0" name="pc5" type="field" width="-1"/>
      <column hidden="0" name="re_label" type="field" width="-1"/>
      <column hidden="0" name="pc_label" type="field" width="-1"/>
      <column hidden="0" name="landzone" type="field" width="-1"/>
      <column hidden="0" name="bd_status" type="field" width="-1"/>
      <column hidden="0" name="bd_symbol" type="field" width="-1"/>
      <column hidden="0" name="vm_class" type="field" width="-1"/>
      <column hidden="0" name="vm_symbol" type="field" width="-1"/>
      <column hidden="0" name="vm_poly" type="field" width="-1"/>
      <column hidden="0" name="version" type="field" width="-1"/>
      <column hidden="0" name="l" type="field" width="-1"/>
      <column hidden="0" name="v" type="field" width="-1"/>
      <column hidden="0" name="bvg1m" type="field" width="-1"/>
      <column hidden="0" name="bvg1m_pc" type="field" width="-1"/>
      <column hidden="0" name="dbvg1m" type="field" width="-1"/>
      <column hidden="0" name="dbvg2m" type="field" width="-1"/>
      <column hidden="0" name="dbvg5m" type="field" width="-1"/>
      <column hidden="0" name="s20am" type="field" width="-1"/>
      <column hidden="0" name="s20an" type="field" width="-1"/>
      <column hidden="0" name="source" type="field" width="-1"/>
      <column hidden="0" name="vm_status" type="field" width="-1"/>
      <column hidden="0" name="vm_stat_id" type="field" width="-1"/>
      <column hidden="0" name="scale" type="field" width="-1"/>
      <column hidden="0" name="fid" type="field" width="-1"/>
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
    <field editable="1" name="BD_STATUS"/>
    <field editable="1" name="BD_SYMBOL"/>
    <field editable="1" name="BVG1M"/>
    <field editable="1" name="BVG1M_PC"/>
    <field editable="1" name="DBVG1M"/>
    <field editable="1" name="DBVG2M"/>
    <field editable="1" name="DBVG5M"/>
    <field editable="1" name="L"/>
    <field editable="1" name="LANDZONE"/>
    <field editable="1" name="MAP_NO"/>
    <field editable="1" name="OBJECTID"/>
    <field editable="1" name="PC1"/>
    <field editable="1" name="PC2"/>
    <field editable="1" name="PC3"/>
    <field editable="1" name="PC4"/>
    <field editable="1" name="PC5"/>
    <field editable="1" name="PC_LABEL"/>
    <field editable="1" name="PERCENT"/>
    <field editable="1" name="RE"/>
    <field editable="1" name="RE1"/>
    <field editable="1" name="RE2"/>
    <field editable="1" name="RE3"/>
    <field editable="1" name="RE4"/>
    <field editable="1" name="RE5"/>
    <field editable="1" name="RE_LABEL"/>
    <field editable="1" name="S20AH"/>
    <field editable="1" name="S20AI"/>
    <field editable="1" name="S20AM"/>
    <field editable="1" name="SCALE"/>
    <field editable="1" name="SOURCE"/>
    <field editable="1" name="V"/>
    <field editable="1" name="VERSION"/>
    <field editable="1" name="VM_CLASS"/>
    <field editable="1" name="VM_POLY"/>
    <field editable="1" name="VM_STATUS"/>
    <field editable="1" name="VM_STAT_ID"/>
    <field editable="1" name="VM_SYMBOL"/>
    <field editable="1" name="bd_status"/>
    <field editable="1" name="bd_symbol"/>
    <field editable="1" name="bvg1m"/>
    <field editable="1" name="bvg1m_pc"/>
    <field editable="1" name="dbvg1m"/>
    <field editable="1" name="dbvg2m"/>
    <field editable="1" name="dbvg5m"/>
    <field editable="1" name="fid"/>
    <field editable="1" name="l"/>
    <field editable="1" name="landzone"/>
    <field editable="1" name="layer"/>
    <field editable="1" name="objectid"/>
    <field editable="1" name="path"/>
    <field editable="1" name="pc1"/>
    <field editable="1" name="pc2"/>
    <field editable="1" name="pc3"/>
    <field editable="1" name="pc4"/>
    <field editable="1" name="pc5"/>
    <field editable="1" name="pc_label"/>
    <field editable="1" name="percent"/>
    <field editable="1" name="re"/>
    <field editable="1" name="re1"/>
    <field editable="1" name="re2"/>
    <field editable="1" name="re3"/>
    <field editable="1" name="re4"/>
    <field editable="1" name="re5"/>
    <field editable="1" name="re_label"/>
    <field editable="1" name="s20am"/>
    <field editable="1" name="s20an"/>
    <field editable="1" name="scale"/>
    <field editable="1" name="source"/>
    <field editable="1" name="v"/>
    <field editable="1" name="version"/>
    <field editable="1" name="vm_class"/>
    <field editable="1" name="vm_poly"/>
    <field editable="1" name="vm_stat_id"/>
    <field editable="1" name="vm_status"/>
    <field editable="1" name="vm_symbol"/>
  </editable>
  <labelOnTop>
    <field name="BD_STATUS" labelOnTop="0"/>
    <field name="BD_SYMBOL" labelOnTop="0"/>
    <field name="BVG1M" labelOnTop="0"/>
    <field name="BVG1M_PC" labelOnTop="0"/>
    <field name="DBVG1M" labelOnTop="0"/>
    <field name="DBVG2M" labelOnTop="0"/>
    <field name="DBVG5M" labelOnTop="0"/>
    <field name="L" labelOnTop="0"/>
    <field name="LANDZONE" labelOnTop="0"/>
    <field name="MAP_NO" labelOnTop="0"/>
    <field name="OBJECTID" labelOnTop="0"/>
    <field name="PC1" labelOnTop="0"/>
    <field name="PC2" labelOnTop="0"/>
    <field name="PC3" labelOnTop="0"/>
    <field name="PC4" labelOnTop="0"/>
    <field name="PC5" labelOnTop="0"/>
    <field name="PC_LABEL" labelOnTop="0"/>
    <field name="PERCENT" labelOnTop="0"/>
    <field name="RE" labelOnTop="0"/>
    <field name="RE1" labelOnTop="0"/>
    <field name="RE2" labelOnTop="0"/>
    <field name="RE3" labelOnTop="0"/>
    <field name="RE4" labelOnTop="0"/>
    <field name="RE5" labelOnTop="0"/>
    <field name="RE_LABEL" labelOnTop="0"/>
    <field name="S20AH" labelOnTop="0"/>
    <field name="S20AI" labelOnTop="0"/>
    <field name="S20AM" labelOnTop="0"/>
    <field name="SCALE" labelOnTop="0"/>
    <field name="SOURCE" labelOnTop="0"/>
    <field name="V" labelOnTop="0"/>
    <field name="VERSION" labelOnTop="0"/>
    <field name="VM_CLASS" labelOnTop="0"/>
    <field name="VM_POLY" labelOnTop="0"/>
    <field name="VM_STATUS" labelOnTop="0"/>
    <field name="VM_STAT_ID" labelOnTop="0"/>
    <field name="VM_SYMBOL" labelOnTop="0"/>
    <field name="bd_status" labelOnTop="0"/>
    <field name="bd_symbol" labelOnTop="0"/>
    <field name="bvg1m" labelOnTop="0"/>
    <field name="bvg1m_pc" labelOnTop="0"/>
    <field name="dbvg1m" labelOnTop="0"/>
    <field name="dbvg2m" labelOnTop="0"/>
    <field name="dbvg5m" labelOnTop="0"/>
    <field name="fid" labelOnTop="0"/>
    <field name="l" labelOnTop="0"/>
    <field name="landzone" labelOnTop="0"/>
    <field name="layer" labelOnTop="0"/>
    <field name="objectid" labelOnTop="0"/>
    <field name="path" labelOnTop="0"/>
    <field name="pc1" labelOnTop="0"/>
    <field name="pc2" labelOnTop="0"/>
    <field name="pc3" labelOnTop="0"/>
    <field name="pc4" labelOnTop="0"/>
    <field name="pc5" labelOnTop="0"/>
    <field name="pc_label" labelOnTop="0"/>
    <field name="percent" labelOnTop="0"/>
    <field name="re" labelOnTop="0"/>
    <field name="re1" labelOnTop="0"/>
    <field name="re2" labelOnTop="0"/>
    <field name="re3" labelOnTop="0"/>
    <field name="re4" labelOnTop="0"/>
    <field name="re5" labelOnTop="0"/>
    <field name="re_label" labelOnTop="0"/>
    <field name="s20am" labelOnTop="0"/>
    <field name="s20an" labelOnTop="0"/>
    <field name="scale" labelOnTop="0"/>
    <field name="source" labelOnTop="0"/>
    <field name="v" labelOnTop="0"/>
    <field name="version" labelOnTop="0"/>
    <field name="vm_class" labelOnTop="0"/>
    <field name="vm_poly" labelOnTop="0"/>
    <field name="vm_stat_id" labelOnTop="0"/>
    <field name="vm_status" labelOnTop="0"/>
    <field name="vm_symbol" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="bd_status"/>
    <field reuseLastValue="0" name="bd_symbol"/>
    <field reuseLastValue="0" name="bvg1m"/>
    <field reuseLastValue="0" name="bvg1m_pc"/>
    <field reuseLastValue="0" name="dbvg1m"/>
    <field reuseLastValue="0" name="dbvg2m"/>
    <field reuseLastValue="0" name="dbvg5m"/>
    <field reuseLastValue="0" name="fid"/>
    <field reuseLastValue="0" name="l"/>
    <field reuseLastValue="0" name="landzone"/>
    <field reuseLastValue="0" name="layer"/>
    <field reuseLastValue="0" name="objectid"/>
    <field reuseLastValue="0" name="path"/>
    <field reuseLastValue="0" name="pc1"/>
    <field reuseLastValue="0" name="pc2"/>
    <field reuseLastValue="0" name="pc3"/>
    <field reuseLastValue="0" name="pc4"/>
    <field reuseLastValue="0" name="pc5"/>
    <field reuseLastValue="0" name="pc_label"/>
    <field reuseLastValue="0" name="percent"/>
    <field reuseLastValue="0" name="re"/>
    <field reuseLastValue="0" name="re1"/>
    <field reuseLastValue="0" name="re2"/>
    <field reuseLastValue="0" name="re3"/>
    <field reuseLastValue="0" name="re4"/>
    <field reuseLastValue="0" name="re5"/>
    <field reuseLastValue="0" name="re_label"/>
    <field reuseLastValue="0" name="s20am"/>
    <field reuseLastValue="0" name="s20an"/>
    <field reuseLastValue="0" name="scale"/>
    <field reuseLastValue="0" name="source"/>
    <field reuseLastValue="0" name="v"/>
    <field reuseLastValue="0" name="version"/>
    <field reuseLastValue="0" name="vm_class"/>
    <field reuseLastValue="0" name="vm_poly"/>
    <field reuseLastValue="0" name="vm_stat_id"/>
    <field reuseLastValue="0" name="vm_status"/>
    <field reuseLastValue="0" name="vm_symbol"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"vm_stat_id"</previewExpression>
  <mapTip>&lt;iframe src="/default.asp" width="300" height="1">
&lt;/iframe>
&lt;div style = "background-color:#ffff99">
&lt;a [% concat( 'href="https://apps.des.qld.gov.au/regional-ecosystems/details/?re=',  
	"RE1",'"' ) %] style=color:#003300>[% "RE1" %]&lt;/a>
&lt;a [% concat( 'href="https://apps.des.qld.gov.au/regional-ecosystems/details/?re=',  
	"RE2",'"' ) %] style=color:#003300>[% "RE2" %]&lt;/a>
&lt;a [% concat( 'href="https://apps.des.qld.gov.au/regional-ecosystems/details/?re=',  
	"RE3",'"' ) %] style=color:#003300>[% "RE3" %]&lt;/a>
&lt;a [% concat( 'href="https://apps.des.qld.gov.au/regional-ecosystems/details/?re=',  
	"RE4",'"' ) %] style=color:#003300>[% "RE4" %]&lt;/a>
&lt;a [% concat( 'href="https://apps.des.qld.gov.au/regional-ecosystems/details/?re=',  
	"RE5",'"' ) %] style=color:#003300>[% "RE5" %]&lt;/a>
&lt;br>
&lt;h4> [% concat( 'Area = ', round($area,2), ' ' , 
	if (@project_area_units = 'hectares', ' ha', 
		if(@project_area_units = 'square meters', ' sq. m.', @project_area_units))) %] &lt;/h4>
&lt;a href="https://play.google.com/store/apps/details?id=com.PattemoreSoftware.qres_flutter" style="color:blue">Get the RE description database for Android&lt;/a>
&lt;/div>
</mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
