<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" simplifyMaxScale="1" minScale="100000000" simplifyDrawingTol="1" readOnly="0" simplifyDrawingHints="1" maxScale="0" labelsEnabled="1" simplifyAlgorithm="0" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" version="3.22.4-Białowieża" symbologyReferenceScale="-1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal limitMode="0" fixedDuration="0" startField="" endField="" accumulate="0" endExpression="" mode="0" durationField="" enabled="0" startExpression="" durationUnit="min">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" type="categorizedSymbol" attr="TRIM(IF(&quot;S20AH&quot; IS NULL, &quot;VM_STATUS&quot;, CONCAT(&quot;VM_STATUS&quot;,&quot;S20AH&quot;)))&#xa;" referencescale="-1" forceraster="0" symbollevels="1">
    <categories>
      <category value="rem_end" label="Category A or B area containing endangered" symbol="0" render="true"/>
      <category value="rem_oc" label="Category A or B area containing of concern" symbol="1" render="true"/>
      <category value="rem_leastc" label="Category A or B area that is least concern" symbol="2" render="true"/>
      <category value="rem_endVMA S20AH area" label="Category A or B area containing endangered and is S20AH" symbol="3" render="true"/>
      <category value="rem_ocVMA S20AH area" label="Category A or B area containing of concern and is S20AH" symbol="4" render="true"/>
      <category value="rem_leastcVMA S20AH area" label="Category A or B area that is least concern and is S20AH" symbol="5" render="true"/>
      <category value="hvr_end" label="Category C or R area containing endangered" symbol="6" render="true"/>
      <category value="hvr_oc" label="Category C or R area containing of concern" symbol="7" render="true"/>
      <category value="hvr_leastc" label="Category C or R area that is of least concern" symbol="8" render="true"/>
      <category value="water VMA S20AH area" label="Water (S20AH)" symbol="9" render="true"/>
      <category value="water" label="Water" symbol="10" render="true"/>
      <category value="non_remnant" label="Category X area" symbol="11" render="true"/>
      <category value="" label="Not defined or map rendering error" symbol="12" render="false"/>
    </categories>
    <symbols>
      <symbol type="fill" alpha="1" name="0" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="255,54,255,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="101,101,101,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,54,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="101,101,101,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="1" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="255,101,15,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="101,101,101,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,101,15,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="101,101,101,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="10" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="225,255,255,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="225,255,255,255"/>
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="11" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="254,255,255,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="2,2,2,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="254,255,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="2,2,2,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="12" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" class="ShapeburstFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="blur_radius"/>
            <Option type="QString" value="50,6,54,255" name="color"/>
            <Option type="QString" value="0,0,255,255" name="color1"/>
            <Option type="QString" value="0,255,0,255" name="color2"/>
            <Option type="QString" value="0" name="color_type"/>
            <Option type="QString" value="0" name="discrete"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="distance_map_unit_scale"/>
            <Option type="QString" value="MM" name="distance_unit"/>
            <Option type="QString" value="255,255,255,255" name="gradient_color2"/>
            <Option type="QString" value="0" name="ignore_rings"/>
            <Option type="QString" value="5" name="max_distance"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="gradient" name="rampType"/>
            <Option type="QString" value="1" name="use_whole_shape"/>
          </Option>
          <prop k="blur_radius" v="0"/>
          <prop k="color" v="50,6,54,255"/>
          <prop k="color1" v="0,0,255,255"/>
          <prop k="color2" v="0,255,0,255"/>
          <prop k="color_type" v="0"/>
          <prop k="discrete" v="0"/>
          <prop k="distance_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_unit" v="MM"/>
          <prop k="gradient_color2" v="255,255,255,255"/>
          <prop k="ignore_rings" v="0"/>
          <prop k="max_distance" v="5"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="rampType" v="gradient"/>
          <prop k="use_whole_shape" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="2" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="125,255,177,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="101,101,101,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="125,255,177,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="101,101,101,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="3" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="255,54,255,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="255,255,115,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1.7" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,54,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,115,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1.7"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="4" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="255,101,15,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="255,255,115,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1.7" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,101,15,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,115,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1.7"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="5" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="125,255,177,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="255,255,115,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1.7" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="125,255,177,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,115,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1.7"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="6" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="255,168,255,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="168,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,168,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="168,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="7" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="255,208,145,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="168,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,208,145,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="168,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="8" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="215,255,177,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="168,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="1" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="215,255,177,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="168,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_unit" v="Point"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" name="9" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="225,255,255,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="Point" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="225,255,255,255"/>
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
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
      <text-style fontItalic="0" fontStrikeout="0" fontKerning="1" textOpacity="1" fontSize="6" fontWeight="50" fontWordSpacing="0" fontSizeUnit="Point" textColor="0,0,0,255" allowHtml="0" blendMode="0" capitalization="0" textOrientation="horizontal" useSubstitutions="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" namedStyle="Normal" fontLetterSpacing="0" multilineHeight="1" previewBkgrdColor="255,255,255,255" fontFamily="Sans Serif" isExpression="1" legendString="Aa" fieldName="CONCAT(&quot;RE&quot;, '\n', &quot;PC_LABEL&quot; )">
        <families/>
        <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSizeUnits="MM" bufferDraw="1" bufferSize="0.69999999999999996" bufferOpacity="1" bufferBlendMode="0" bufferColor="255,255,255,255" bufferNoFill="1"/>
        <text-mask maskSize="0" maskType="0" maskSizeUnits="MM" maskJoinStyle="128" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskEnabled="0" maskOpacity="1"/>
        <background shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeOpacity="1" shapeRotationType="0" shapeBlendMode="0" shapeSizeX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeOffsetY="0" shapeBorderColor="128,128,128,255" shapeSizeType="0" shapeSVGFile="" shapeOffsetX="0" shapeSizeY="0" shapeRadiiUnit="MM" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeRotation="0" shapeRadiiX="0" shapeJoinStyle="64" shapeBorderWidth="0" shapeType="0">
          <symbol type="marker" alpha="1" name="markerSymbol" clip_to_extent="1" force_rhr="0">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="145,82,45,255" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="circle" name="name"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="35,35,35,255" name="outline_color"/>
                <Option type="QString" value="solid" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="2" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <prop k="angle" v="0"/>
              <prop k="cap_style" v="square"/>
              <prop k="color" v="145,82,45,255"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="name" v="circle"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,255"/>
              <prop k="outline_style" v="solid"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="2"/>
              <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="size_unit" v="MM"/>
              <prop k="vertical_anchor_point" v="1"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol type="fill" alpha="1" name="fillSymbol" clip_to_extent="1" force_rhr="0">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                <Option type="QString" value="255,255,255,255" name="color"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="128,128,128,255" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="solid" name="style"/>
              </Option>
              <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color" v="255,255,255,255"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="128,128,128,255"/>
              <prop k="outline_style" v="no"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="style" v="solid"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowRadius="1.5" shadowColor="0,0,0,255" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOpacity="0.69999999999999996" shadowBlendMode="6"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format formatNumbers="0" plussign="0" autoWrapLength="0" addDirectionSymbol="0" decimals="3" leftDirectionSymbol="&lt;" multilineAlign="1" wrapChar="" useMaxLineLengthForAutoWrap="1" placeDirectionSymbol="0" rightDirectionSymbol=">" reverseDirectionSymbol="0"/>
      <placement rotationAngle="0" overrunDistanceUnit="MM" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" geometryGenerator="" placement="0" geometryGeneratorEnabled="0" repeatDistanceUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" overrunDistance="0" offsetUnits="MM" priority="10" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" dist="0" polygonPlacementFlags="2" rotationUnit="AngleDegrees" centroidInside="1" placementFlags="10" fitInPolygonOnly="0" layerType="PolygonGeometry" quadOffset="4" geometryGeneratorType="PointGeometry" preserveRotation="1" centroidWhole="0" maxCurvedCharAngleOut="-25" distUnits="MM" lineAnchorClipping="0" repeatDistance="0" offsetType="0"/>
      <rendering fontLimitPixelSize="0" drawLabels="1" mergeLines="0" zIndex="0" minFeatureSize="1" limitNumLabels="0" scaleMax="0" unplacedVisibility="0" scaleVisibility="0" scaleMin="0" obstacle="0" labelPerPart="0" upsidedownLabels="0" fontMinPixelSize="3" displayAll="0" maxNumLabels="2000" obstacleFactor="2" obstacleType="1" fontMaxPixelSize="10000"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" value="" name="name"/>
          <Option name="properties"/>
          <Option type="QString" value="collection" name="type"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
          <Option type="int" value="0" name="blendMode"/>
          <Option type="Map" name="ddProperties">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
          <Option type="bool" value="false" name="drawToAllParts"/>
          <Option type="QString" value="0" name="enabled"/>
          <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
          <Option type="QString" value="&lt;symbol type=&quot;line&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
          <Option type="double" value="0" name="minLength"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
          <Option type="QString" value="MM" name="minLengthUnit"/>
          <Option type="double" value="0" name="offsetFromAnchor"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
          <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
          <Option type="double" value="0" name="offsetFromLabel"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
          <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option type="List" name="dualview/previewExpressions">
        <Option type="QString" value="&quot;vm_stat_id&quot;"/>
      </Option>
      <Option type="QString" value="transparency" name="embeddedWidgets/0/id"/>
      <Option type="QString" value="1" name="embeddedWidgets/count"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory penColor="#000000" backgroundAlpha="255" minimumSize="0" lineSizeScale="3x:0,0,0,0,0,0" width="15" sizeScale="3x:0,0,0,0,0,0" barWidth="5" penWidth="0" direction="1" spacing="0" opacity="1" rotationOffset="270" maxScaleDenominator="1e+08" backgroundColor="#ffffff" penAlpha="255" spacingUnitScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" showAxis="0" enabled="0" lineSizeType="MM" scaleDependency="Area" spacingUnit="MM" diagramOrientation="Up" scaleBasedVisibility="0" sizeType="MM" height="15" minScaleDenominator="0">
      <fontProperties description="Ubuntu,11,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" label=""/>
      <axisSymbol>
        <symbol type="line" alpha="1" name="" clip_to_extent="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" class="SimpleLine" enabled="1">
            <Option type="Map">
              <Option type="QString" value="0" name="align_dash_pattern"/>
              <Option type="QString" value="square" name="capstyle"/>
              <Option type="QString" value="5;2" name="customdash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
              <Option type="QString" value="MM" name="customdash_unit"/>
              <Option type="QString" value="0" name="dash_pattern_offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
              <Option type="QString" value="0" name="draw_inside_polygon"/>
              <Option type="QString" value="bevel" name="joinstyle"/>
              <Option type="QString" value="35,35,35,255" name="line_color"/>
              <Option type="QString" value="solid" name="line_style"/>
              <Option type="QString" value="0.26" name="line_width"/>
              <Option type="QString" value="MM" name="line_width_unit"/>
              <Option type="QString" value="0" name="offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="offset_unit"/>
              <Option type="QString" value="0" name="ring_filter"/>
              <Option type="QString" value="0" name="trim_distance_end"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
              <Option type="QString" value="MM" name="trim_distance_end_unit"/>
              <Option type="QString" value="0" name="trim_distance_start"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
              <Option type="QString" value="MM" name="trim_distance_start_unit"/>
              <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
              <Option type="QString" value="0" name="use_custom_dash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
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
            <prop k="trim_distance_end" v="0"/>
            <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="trim_distance_end_unit" v="MM"/>
            <prop k="trim_distance_start" v="0"/>
            <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="trim_distance_start_unit" v="MM"/>
            <prop k="tweak_dash_pattern_on_corners" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="1" linePlacementFlags="18" priority="0" zIndex="0" dist="0" obstacle="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option type="double" value="0" name="allowedGapsBuffer"/>
        <Option type="bool" value="false" name="allowedGapsEnabled"/>
        <Option type="QString" value="" name="allowedGapsLayer"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend type="default-vector" showLabelLegend="0"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="fid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="objectid">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="re">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="re1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="re2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="re3">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="re4">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="re5">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="percent">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pc1">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pc2">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pc3">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pc4">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pc5">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="re_label">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pc_label">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="landzone">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bd_status">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bd_symbol">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="vm_class">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="vm_symbol">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="vm_poly">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="version">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="l">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="v">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bvg1m">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bvg1m_pc">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="dbvg1m">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="dbvg2m">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="dbvg5m">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="s20am">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="s20an">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="source">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="vm_status">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="vm_stat_id">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="scale">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="layer">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="path">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="fid" index="0"/>
    <alias name="" field="objectid" index="1"/>
    <alias name="" field="re" index="2"/>
    <alias name="" field="re1" index="3"/>
    <alias name="" field="re2" index="4"/>
    <alias name="" field="re3" index="5"/>
    <alias name="" field="re4" index="6"/>
    <alias name="" field="re5" index="7"/>
    <alias name="" field="percent" index="8"/>
    <alias name="" field="pc1" index="9"/>
    <alias name="" field="pc2" index="10"/>
    <alias name="" field="pc3" index="11"/>
    <alias name="" field="pc4" index="12"/>
    <alias name="" field="pc5" index="13"/>
    <alias name="" field="re_label" index="14"/>
    <alias name="" field="pc_label" index="15"/>
    <alias name="" field="landzone" index="16"/>
    <alias name="" field="bd_status" index="17"/>
    <alias name="" field="bd_symbol" index="18"/>
    <alias name="" field="vm_class" index="19"/>
    <alias name="" field="vm_symbol" index="20"/>
    <alias name="" field="vm_poly" index="21"/>
    <alias name="" field="version" index="22"/>
    <alias name="" field="l" index="23"/>
    <alias name="" field="v" index="24"/>
    <alias name="" field="bvg1m" index="25"/>
    <alias name="" field="bvg1m_pc" index="26"/>
    <alias name="" field="dbvg1m" index="27"/>
    <alias name="" field="dbvg2m" index="28"/>
    <alias name="" field="dbvg5m" index="29"/>
    <alias name="" field="s20am" index="30"/>
    <alias name="" field="s20an" index="31"/>
    <alias name="" field="source" index="32"/>
    <alias name="" field="vm_status" index="33"/>
    <alias name="" field="vm_stat_id" index="34"/>
    <alias name="" field="scale" index="35"/>
    <alias name="" field="layer" index="36"/>
    <alias name="" field="path" index="37"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" expression="" field="fid"/>
    <default applyOnUpdate="0" expression="" field="objectid"/>
    <default applyOnUpdate="0" expression="" field="re"/>
    <default applyOnUpdate="0" expression="" field="re1"/>
    <default applyOnUpdate="0" expression="" field="re2"/>
    <default applyOnUpdate="0" expression="" field="re3"/>
    <default applyOnUpdate="0" expression="" field="re4"/>
    <default applyOnUpdate="0" expression="" field="re5"/>
    <default applyOnUpdate="0" expression="" field="percent"/>
    <default applyOnUpdate="0" expression="" field="pc1"/>
    <default applyOnUpdate="0" expression="" field="pc2"/>
    <default applyOnUpdate="0" expression="" field="pc3"/>
    <default applyOnUpdate="0" expression="" field="pc4"/>
    <default applyOnUpdate="0" expression="" field="pc5"/>
    <default applyOnUpdate="0" expression="" field="re_label"/>
    <default applyOnUpdate="0" expression="" field="pc_label"/>
    <default applyOnUpdate="0" expression="" field="landzone"/>
    <default applyOnUpdate="0" expression="" field="bd_status"/>
    <default applyOnUpdate="0" expression="" field="bd_symbol"/>
    <default applyOnUpdate="0" expression="" field="vm_class"/>
    <default applyOnUpdate="0" expression="" field="vm_symbol"/>
    <default applyOnUpdate="0" expression="" field="vm_poly"/>
    <default applyOnUpdate="0" expression="" field="version"/>
    <default applyOnUpdate="0" expression="" field="l"/>
    <default applyOnUpdate="0" expression="" field="v"/>
    <default applyOnUpdate="0" expression="" field="bvg1m"/>
    <default applyOnUpdate="0" expression="" field="bvg1m_pc"/>
    <default applyOnUpdate="0" expression="" field="dbvg1m"/>
    <default applyOnUpdate="0" expression="" field="dbvg2m"/>
    <default applyOnUpdate="0" expression="" field="dbvg5m"/>
    <default applyOnUpdate="0" expression="" field="s20am"/>
    <default applyOnUpdate="0" expression="" field="s20an"/>
    <default applyOnUpdate="0" expression="" field="source"/>
    <default applyOnUpdate="0" expression="" field="vm_status"/>
    <default applyOnUpdate="0" expression="" field="vm_stat_id"/>
    <default applyOnUpdate="0" expression="" field="scale"/>
    <default applyOnUpdate="0" expression="" field="layer"/>
    <default applyOnUpdate="0" expression="" field="path"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="1" field="fid" constraints="3"/>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="1" field="objectid" constraints="3"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="re" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="re1" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="re2" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="re3" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="re4" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="re5" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="percent" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="pc1" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="pc2" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="pc3" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="pc4" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="pc5" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="re_label" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="pc_label" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="landzone" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="bd_status" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="bd_symbol" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="vm_class" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="vm_symbol" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="vm_poly" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="version" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="l" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="v" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="bvg1m" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="bvg1m_pc" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="dbvg1m" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="dbvg2m" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="dbvg5m" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="s20am" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="s20an" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="source" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="vm_status" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="vm_stat_id" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="scale" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="layer" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" field="path" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="fid"/>
    <constraint exp="" desc="" field="objectid"/>
    <constraint exp="" desc="" field="re"/>
    <constraint exp="" desc="" field="re1"/>
    <constraint exp="" desc="" field="re2"/>
    <constraint exp="" desc="" field="re3"/>
    <constraint exp="" desc="" field="re4"/>
    <constraint exp="" desc="" field="re5"/>
    <constraint exp="" desc="" field="percent"/>
    <constraint exp="" desc="" field="pc1"/>
    <constraint exp="" desc="" field="pc2"/>
    <constraint exp="" desc="" field="pc3"/>
    <constraint exp="" desc="" field="pc4"/>
    <constraint exp="" desc="" field="pc5"/>
    <constraint exp="" desc="" field="re_label"/>
    <constraint exp="" desc="" field="pc_label"/>
    <constraint exp="" desc="" field="landzone"/>
    <constraint exp="" desc="" field="bd_status"/>
    <constraint exp="" desc="" field="bd_symbol"/>
    <constraint exp="" desc="" field="vm_class"/>
    <constraint exp="" desc="" field="vm_symbol"/>
    <constraint exp="" desc="" field="vm_poly"/>
    <constraint exp="" desc="" field="version"/>
    <constraint exp="" desc="" field="l"/>
    <constraint exp="" desc="" field="v"/>
    <constraint exp="" desc="" field="bvg1m"/>
    <constraint exp="" desc="" field="bvg1m_pc"/>
    <constraint exp="" desc="" field="dbvg1m"/>
    <constraint exp="" desc="" field="dbvg2m"/>
    <constraint exp="" desc="" field="dbvg5m"/>
    <constraint exp="" desc="" field="s20am"/>
    <constraint exp="" desc="" field="s20an"/>
    <constraint exp="" desc="" field="source"/>
    <constraint exp="" desc="" field="vm_status"/>
    <constraint exp="" desc="" field="vm_stat_id"/>
    <constraint exp="" desc="" field="scale"/>
    <constraint exp="" desc="" field="layer"/>
    <constraint exp="" desc="" field="path"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting shortTitle="" type="1" capture="0" name="RE description" id="{ecb5e9bd-a6d1-4280-9d67-37383f163a58}" notificationMessage="" isEnabledOnlyWhenEditable="0" action="#############################################################################################################&#xa;#                       QGIS Action script for extracting info from                                         #&#xa;#                           https://www.data.qld.gov.au/dataset/                                            #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                               By Otto Pattemore                                           #&#xa;#                                                                                                           #&#xa;#############################################################################################################&#xa;import processing&#xa;import re&#xa;import json&#xa;from PyQt5.QtWidgets import *&#xa;from PyQt5.QtGui import *&#xa;class TableMessageBox(QMessageBox):&#xa;    def __init__(self,title, fields,records):&#xa;        QMessageBox.__init__(self)&#xa;        self.setSizeGripEnabled (True)&#xa;        self.records = records&#xa;        self.fields = fields&#xa;        self.setWindowTitle (title)&#xa;&#xa;        #Create QPushButton in QMessageBox        &#xa;        self.addButton (QPushButton('OK'), QMessageBox.YesRole)&#xa;        #Add TableWidget to QMessageBox           &#xa;        self.addTableWidget (self) &#xa;&#xa;        #Return values while clicking QPushButton        &#xa;        currentClick    = self.exec_() &#xa;&#xa;    #Create TableWidget &#xa;    def addTableWidget (self, parentItem):&#xa;        self.tableWidget = QTableWidget(parentItem)&#xa;        self.tableWidget.setGeometry (QtCore.QRect(0, 0, 925, 500))&#xa;        self.tableWidget.setObjectName ('tableWidget')&#xa;        print(len(self.records))&#xa;        self.tableWidget.setColumnCount(len(self.fields))&#xa;        self.tableWidget.setRowCount(len(self.records[&quot;RE&quot;])+1)&#xa;        for row in range(0,len(self.fields)):&#xa;                table_item = QTableWidgetItem(self.fields[row])&#xa;                font = QFont()&#xa;                font.setBold(True)&#xa;                table_item.setFont(font)&#xa;                self.tableWidget.setItem (0,row,table_item)&#xa;                table_item.setBackground(QColor(&quot;green&quot;))&#xa;                for column in range(0,len(self.records[self.fields[row]])):&#xa;                    self.tableWidget.setItem (column+1,row,QTableWidgetItem(self.records[self.fields[row]][column]))&#xa;        #font = QFont()&#xa;        #font.setBold(True)&#xa;        #self.tableWidget.setHeaderFont(font)&#xa;        self.tableWidget.setWordWrap(True)&#xa;        self.tableWidget.setColumnWidth(1,400)&#xa;        self.tableWidget.setColumnWidth(2,150)&#xa;        self.tableWidget.resizeRowsToContents()&#xa;    #Allow resizing of QMessageBox&#xa;    def event(self, e):&#xa;        result = QMessageBox.event(self, e)&#xa;        self.setMinimumWidth(1025)&#xa;        self.setMaximumWidth(16777215)&#xa;        self.setMinimumHeight(400)&#xa;        self.setMaximumHeight(16777215)        &#xa;        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)&#xa;&#xa;        return result&#xa;def GetJSON(URL):&#xa;    #This method of server access avoids firewall problems&#xa;    params = {&#xa;        'URL' : URL,&#xa;        'OUTPUT' : &quot;TEMPORARY_OUTPUT&quot;&#xa;    }&#xa;    tempLayer = processing.run('native:filedownloader',params)[&quot;OUTPUT&quot;]&#xa;    file = open(tempLayer)&#xa;    return_string = file.read()&#xa;    file.close()&#xa;    return return_string&#xa;# Get REs and remove alphabetic characters if they are present&#xa;RE1 = str(&quot;[%RE1%]&quot;)&#xa;RE1 = re.sub(&quot;[^0-9.-]+&quot;,'',RE1)&#xa;RE2 = str(&quot;[%RE2%]&quot;)&#xa;RE2 = re.sub(&quot;[^0-9.-]+&quot;,'',RE2)&#xa;RE3 = str(&quot;[%RE3%]&quot;)&#xa;RE3 = re.sub(&quot;[^0-9.-]+&quot;,'',RE3)&#xa;RE4 = str(&quot;[%RE4%]&quot;)&#xa;RE4 = re.sub(&quot;[^0-9.-]+&quot;,'',RE4)&#xa;RE5 = str(&quot;[%RE5%]&quot;)&#xa;RE5 = re.sub(&quot;[^0-9.-]+&quot;,'',RE5)&#xa;res = [RE1,RE2,RE3,RE4,RE5]&#xa;short_descriptions = []&#xa;vma_classes = []&#xa;structure = []&#xa;for i in res:&#xa;    url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?resource_id=adb569fd-c660-40ad-a4ed-2b9c3eda7023&amp;filters={&quot;re_id&quot;:&quot;'+str(i)+'&quot;}'&#xa;    json_data = json.loads(GetJSON(url))&#xa;    for j in json_data['result']['records']:&#xa;        short_descriptions.append(j[&quot;Short Description&quot;])&#xa;        vma_classes.append(j[&quot;vma_class&quot;])&#xa;        structure.append(j[&quot;Structure category&quot;])&#xa;&#xa;msg = TableMessageBox('Regional Ecosystem(s)',[&quot;RE&quot;,&quot;Short description&quot;,&quot;VMA class&quot;,&quot;Structure&quot;],{&#xa;    &quot;RE&quot;:res,&#xa;    &quot;Short description&quot;:short_descriptions,&#xa;    &quot;VMA class&quot;:vma_classes,&#xa;    &quot;Structure&quot;:structure&#xa;})" icon="">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column hidden="1" width="-1" type="actions"/>
      <column hidden="0" width="-1" type="field" name="layer"/>
      <column hidden="0" width="-1" type="field" name="path"/>
      <column hidden="0" width="-1" type="field" name="objectid"/>
      <column hidden="0" width="-1" type="field" name="re"/>
      <column hidden="0" width="-1" type="field" name="re1"/>
      <column hidden="0" width="-1" type="field" name="re2"/>
      <column hidden="0" width="-1" type="field" name="re3"/>
      <column hidden="0" width="-1" type="field" name="re4"/>
      <column hidden="0" width="-1" type="field" name="re5"/>
      <column hidden="0" width="-1" type="field" name="percent"/>
      <column hidden="0" width="-1" type="field" name="pc1"/>
      <column hidden="0" width="-1" type="field" name="pc2"/>
      <column hidden="0" width="-1" type="field" name="pc3"/>
      <column hidden="0" width="-1" type="field" name="pc4"/>
      <column hidden="0" width="-1" type="field" name="pc5"/>
      <column hidden="0" width="-1" type="field" name="re_label"/>
      <column hidden="0" width="-1" type="field" name="pc_label"/>
      <column hidden="0" width="-1" type="field" name="landzone"/>
      <column hidden="0" width="-1" type="field" name="bd_status"/>
      <column hidden="0" width="-1" type="field" name="bd_symbol"/>
      <column hidden="0" width="-1" type="field" name="vm_class"/>
      <column hidden="0" width="-1" type="field" name="vm_symbol"/>
      <column hidden="0" width="-1" type="field" name="vm_poly"/>
      <column hidden="0" width="-1" type="field" name="version"/>
      <column hidden="0" width="-1" type="field" name="l"/>
      <column hidden="0" width="-1" type="field" name="v"/>
      <column hidden="0" width="-1" type="field" name="bvg1m"/>
      <column hidden="0" width="-1" type="field" name="bvg1m_pc"/>
      <column hidden="0" width="-1" type="field" name="dbvg1m"/>
      <column hidden="0" width="-1" type="field" name="dbvg2m"/>
      <column hidden="0" width="-1" type="field" name="dbvg5m"/>
      <column hidden="0" width="-1" type="field" name="s20am"/>
      <column hidden="0" width="-1" type="field" name="s20an"/>
      <column hidden="0" width="-1" type="field" name="source"/>
      <column hidden="0" width="-1" type="field" name="vm_status"/>
      <column hidden="0" width="-1" type="field" name="vm_stat_id"/>
      <column hidden="0" width="-1" type="field" name="scale"/>
      <column hidden="0" width="-1" type="field" name="fid"/>
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
    <field name="BD_STATUS" editable="1"/>
    <field name="BD_SYMBOL" editable="1"/>
    <field name="BVG1M" editable="1"/>
    <field name="BVG1M_PC" editable="1"/>
    <field name="DBVG1M" editable="1"/>
    <field name="DBVG2M" editable="1"/>
    <field name="DBVG5M" editable="1"/>
    <field name="L" editable="1"/>
    <field name="LANDZONE" editable="1"/>
    <field name="MAP_NO" editable="1"/>
    <field name="OBJECTID" editable="1"/>
    <field name="PC1" editable="1"/>
    <field name="PC2" editable="1"/>
    <field name="PC3" editable="1"/>
    <field name="PC4" editable="1"/>
    <field name="PC5" editable="1"/>
    <field name="PC_LABEL" editable="1"/>
    <field name="PERCENT" editable="1"/>
    <field name="RE" editable="1"/>
    <field name="RE1" editable="1"/>
    <field name="RE2" editable="1"/>
    <field name="RE3" editable="1"/>
    <field name="RE4" editable="1"/>
    <field name="RE5" editable="1"/>
    <field name="RE_LABEL" editable="1"/>
    <field name="S20AH" editable="1"/>
    <field name="S20AI" editable="1"/>
    <field name="S20AM" editable="1"/>
    <field name="SCALE" editable="1"/>
    <field name="SOURCE" editable="1"/>
    <field name="V" editable="1"/>
    <field name="VERSION" editable="1"/>
    <field name="VM_CLASS" editable="1"/>
    <field name="VM_POLY" editable="1"/>
    <field name="VM_STATUS" editable="1"/>
    <field name="VM_STAT_ID" editable="1"/>
    <field name="VM_SYMBOL" editable="1"/>
    <field name="bd_status" editable="1"/>
    <field name="bd_symbol" editable="1"/>
    <field name="bvg1m" editable="1"/>
    <field name="bvg1m_pc" editable="1"/>
    <field name="dbvg1m" editable="1"/>
    <field name="dbvg2m" editable="1"/>
    <field name="dbvg5m" editable="1"/>
    <field name="fid" editable="1"/>
    <field name="l" editable="1"/>
    <field name="landzone" editable="1"/>
    <field name="layer" editable="1"/>
    <field name="objectid" editable="1"/>
    <field name="path" editable="1"/>
    <field name="pc1" editable="1"/>
    <field name="pc2" editable="1"/>
    <field name="pc3" editable="1"/>
    <field name="pc4" editable="1"/>
    <field name="pc5" editable="1"/>
    <field name="pc_label" editable="1"/>
    <field name="percent" editable="1"/>
    <field name="re" editable="1"/>
    <field name="re1" editable="1"/>
    <field name="re2" editable="1"/>
    <field name="re3" editable="1"/>
    <field name="re4" editable="1"/>
    <field name="re5" editable="1"/>
    <field name="re_label" editable="1"/>
    <field name="s20am" editable="1"/>
    <field name="s20an" editable="1"/>
    <field name="scale" editable="1"/>
    <field name="source" editable="1"/>
    <field name="v" editable="1"/>
    <field name="version" editable="1"/>
    <field name="vm_class" editable="1"/>
    <field name="vm_poly" editable="1"/>
    <field name="vm_stat_id" editable="1"/>
    <field name="vm_status" editable="1"/>
    <field name="vm_symbol" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="BD_STATUS"/>
    <field labelOnTop="0" name="BD_SYMBOL"/>
    <field labelOnTop="0" name="BVG1M"/>
    <field labelOnTop="0" name="BVG1M_PC"/>
    <field labelOnTop="0" name="DBVG1M"/>
    <field labelOnTop="0" name="DBVG2M"/>
    <field labelOnTop="0" name="DBVG5M"/>
    <field labelOnTop="0" name="L"/>
    <field labelOnTop="0" name="LANDZONE"/>
    <field labelOnTop="0" name="MAP_NO"/>
    <field labelOnTop="0" name="OBJECTID"/>
    <field labelOnTop="0" name="PC1"/>
    <field labelOnTop="0" name="PC2"/>
    <field labelOnTop="0" name="PC3"/>
    <field labelOnTop="0" name="PC4"/>
    <field labelOnTop="0" name="PC5"/>
    <field labelOnTop="0" name="PC_LABEL"/>
    <field labelOnTop="0" name="PERCENT"/>
    <field labelOnTop="0" name="RE"/>
    <field labelOnTop="0" name="RE1"/>
    <field labelOnTop="0" name="RE2"/>
    <field labelOnTop="0" name="RE3"/>
    <field labelOnTop="0" name="RE4"/>
    <field labelOnTop="0" name="RE5"/>
    <field labelOnTop="0" name="RE_LABEL"/>
    <field labelOnTop="0" name="S20AH"/>
    <field labelOnTop="0" name="S20AI"/>
    <field labelOnTop="0" name="S20AM"/>
    <field labelOnTop="0" name="SCALE"/>
    <field labelOnTop="0" name="SOURCE"/>
    <field labelOnTop="0" name="V"/>
    <field labelOnTop="0" name="VERSION"/>
    <field labelOnTop="0" name="VM_CLASS"/>
    <field labelOnTop="0" name="VM_POLY"/>
    <field labelOnTop="0" name="VM_STATUS"/>
    <field labelOnTop="0" name="VM_STAT_ID"/>
    <field labelOnTop="0" name="VM_SYMBOL"/>
    <field labelOnTop="0" name="bd_status"/>
    <field labelOnTop="0" name="bd_symbol"/>
    <field labelOnTop="0" name="bvg1m"/>
    <field labelOnTop="0" name="bvg1m_pc"/>
    <field labelOnTop="0" name="dbvg1m"/>
    <field labelOnTop="0" name="dbvg2m"/>
    <field labelOnTop="0" name="dbvg5m"/>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="l"/>
    <field labelOnTop="0" name="landzone"/>
    <field labelOnTop="0" name="layer"/>
    <field labelOnTop="0" name="objectid"/>
    <field labelOnTop="0" name="path"/>
    <field labelOnTop="0" name="pc1"/>
    <field labelOnTop="0" name="pc2"/>
    <field labelOnTop="0" name="pc3"/>
    <field labelOnTop="0" name="pc4"/>
    <field labelOnTop="0" name="pc5"/>
    <field labelOnTop="0" name="pc_label"/>
    <field labelOnTop="0" name="percent"/>
    <field labelOnTop="0" name="re"/>
    <field labelOnTop="0" name="re1"/>
    <field labelOnTop="0" name="re2"/>
    <field labelOnTop="0" name="re3"/>
    <field labelOnTop="0" name="re4"/>
    <field labelOnTop="0" name="re5"/>
    <field labelOnTop="0" name="re_label"/>
    <field labelOnTop="0" name="s20am"/>
    <field labelOnTop="0" name="s20an"/>
    <field labelOnTop="0" name="scale"/>
    <field labelOnTop="0" name="source"/>
    <field labelOnTop="0" name="v"/>
    <field labelOnTop="0" name="version"/>
    <field labelOnTop="0" name="vm_class"/>
    <field labelOnTop="0" name="vm_poly"/>
    <field labelOnTop="0" name="vm_stat_id"/>
    <field labelOnTop="0" name="vm_status"/>
    <field labelOnTop="0" name="vm_symbol"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="bd_status" reuseLastValue="0"/>
    <field name="bd_symbol" reuseLastValue="0"/>
    <field name="bvg1m" reuseLastValue="0"/>
    <field name="bvg1m_pc" reuseLastValue="0"/>
    <field name="dbvg1m" reuseLastValue="0"/>
    <field name="dbvg2m" reuseLastValue="0"/>
    <field name="dbvg5m" reuseLastValue="0"/>
    <field name="fid" reuseLastValue="0"/>
    <field name="l" reuseLastValue="0"/>
    <field name="landzone" reuseLastValue="0"/>
    <field name="layer" reuseLastValue="0"/>
    <field name="objectid" reuseLastValue="0"/>
    <field name="path" reuseLastValue="0"/>
    <field name="pc1" reuseLastValue="0"/>
    <field name="pc2" reuseLastValue="0"/>
    <field name="pc3" reuseLastValue="0"/>
    <field name="pc4" reuseLastValue="0"/>
    <field name="pc5" reuseLastValue="0"/>
    <field name="pc_label" reuseLastValue="0"/>
    <field name="percent" reuseLastValue="0"/>
    <field name="re" reuseLastValue="0"/>
    <field name="re1" reuseLastValue="0"/>
    <field name="re2" reuseLastValue="0"/>
    <field name="re3" reuseLastValue="0"/>
    <field name="re4" reuseLastValue="0"/>
    <field name="re5" reuseLastValue="0"/>
    <field name="re_label" reuseLastValue="0"/>
    <field name="s20am" reuseLastValue="0"/>
    <field name="s20an" reuseLastValue="0"/>
    <field name="scale" reuseLastValue="0"/>
    <field name="source" reuseLastValue="0"/>
    <field name="v" reuseLastValue="0"/>
    <field name="version" reuseLastValue="0"/>
    <field name="vm_class" reuseLastValue="0"/>
    <field name="vm_poly" reuseLastValue="0"/>
    <field name="vm_stat_id" reuseLastValue="0"/>
    <field name="vm_status" reuseLastValue="0"/>
    <field name="vm_symbol" reuseLastValue="0"/>
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
&lt;/div>
</mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
