<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="100000000" readOnly="0" simplifyMaxScale="1" simplifyDrawingTol="1" labelsEnabled="1" simplifyLocal="1" maxScale="0" simplifyDrawingHints="1" version="3.22.4-Białowieża" styleCategories="AllStyleCategories" simplifyAlgorithm="0" hasScaleBasedVisibilityFlag="0" symbologyReferenceScale="-1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal endExpression="" fixedDuration="0" durationUnit="min" durationField="" accumulate="0" endField="" startExpression="" enabled="0" startField="" mode="0" limitMode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 type="categorizedSymbol" enableorderby="0" referencescale="-1" attr="concat(&quot;TENURE&quot;,',',&quot;COVER_TYP&quot;,',',&quot;PARCEL_TYP&quot;)" forceraster="0" symbollevels="0">
    <categories>
      <category render="true" symbol="0" value="Freehold,Base,Lot Type Parcel" label="Freehold, Base, Lot Type Parcel"/>
      <category render="true" symbol="1" value="Freehold,Strata,Lot Type Parcel" label="Freehold, Strata, Lot Type Parcel"/>
      <category render="true" symbol="2" value="Freehold,Volumetric,Lot Type Parcel" label="Freehold, Volumetric, Lot Type Parcel"/>
      <category render="true" symbol="3" value="Lands Lease,Base,Lot Type Parcel" label="Lands Lease, Base, Lot Type Parcel"/>
      <category render="true" symbol="4" value="Lands Lease,Strata,Lot Type Parcel" label="Lands Lease, Strata, Lot Type Parcel"/>
      <category render="true" symbol="5" value="Lands Lease,Volumetric,Lot Type Parcel" label="Lands Lease, Volumetric, Lot Type Parcel"/>
      <category render="true" symbol="6" value="State Land,Base,Lot Type Parcel" label="State Land, Base, Lot Type Parcel"/>
      <category render="true" symbol="7" value="State Land,Strata,Lot Type Parcel" label="State Land, Strata, Lot Type Parcel"/>
      <category render="true" symbol="8" value="State Land,Volumetric,Lot Type Parcel" label="State Land, Volumetric, Lot Type Parcel"/>
      <category render="true" symbol="9" value="National Park,Base,Lot Type Parcel" label="National Park, Base, Lot Type Parcel"/>
      <category render="true" symbol="10" value="National Park,Strata,Lot Type Parcel" label="National Park, Strata, Lot Type Parcel"/>
      <category render="true" symbol="11" value="Reserve,Base,Lot Type Parcel" label="Reserve, Base, Lot Type Parcel"/>
      <category render="true" symbol="12" value="Reserve,Strata,Lot Type Parcel" label="Reserve, Strata, Lot Type Parcel"/>
      <category render="true" symbol="13" value="Reserve,Volumetric,Lot Type Parcel" label="Reserve, Volumetric, Lot Type Parcel"/>
      <category render="true" symbol="14" value="Forest Reserve,Base,Lot Type Parcel" label="Forest Reserve, Base, Lot Type Parcel"/>
      <category render="true" symbol="15" value="State Forest,Base,Lot Type Parcel" label="State Forest, Base, Lot Type Parcel"/>
      <category render="true" symbol="16" value="Timber Reserve,Base,Lot Type Parcel" label="Timber Reserve, Base, Lot Type Parcel"/>
    </categories>
    <symbols>
      <symbol type="fill" name="0" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="190,232,255,178"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="156,156,156,178"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Point"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="190,232,255,178" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="156,156,156,178" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="1" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="10" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="11" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="163,255,115,178"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="156,156,156,178"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Point"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="163,255,115,178" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="156,156,156,178" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="12" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="13" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="14" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="209,255,115,178"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="156,156,156,178"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Point"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="209,255,115,178" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="156,156,156,178" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="15" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="209,255,115,178"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="156,156,156,178"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Point"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="209,255,115,178" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="156,156,156,178" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="16" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="209,255,115,178"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="156,156,156,178"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Point"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="209,255,115,178" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="156,156,156,178" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="2" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="3" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="255,255,255,178"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="156,156,156,178"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Point"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,255,255,178" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="156,156,156,178" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="4" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="5" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="6" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="255,255,255,178"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="156,156,156,178"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Point"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,255,255,178" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="156,156,156,178" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="7" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="8" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="alpha" value="1"/>
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="coordinate_mode" value="0"/>
            <Option type="QString" name="imageFile" value="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="Point"/>
            <Option type="QString" name="width" value="9"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="width_unit" value="Point"/>
          </Option>
          <prop v="1" k="alpha"/>
          <prop v="0" k="angle"/>
          <prop v="0" k="coordinate_mode"/>
          <prop v="base64:iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IB2cksfwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAC9JREFUKJFj+fjx42YGEgALKYpRNEycOJEhPz+fgRAfrgFZEh+ffCeRrGHUD3j4AGkPKmzQRL/cAAAAAElFTkSuQmCC" k="imageFile"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="Point" k="offset_unit"/>
          <prop v="9" k="width"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <prop v="Point" k="width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="156,156,156,178"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="Point"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="156,156,156,178" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="Point" k="line_width_unit"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="9" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="56,168,0,178"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="156,156,156,178"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Point"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="56,168,0,178" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="156,156,156,178" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="Point" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
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
      <text-style isExpression="0" fieldName="lotplan" textOpacity="1" textColor="0,0,255,255" fontUnderline="0" multilineHeight="1" legendString="Aa" fontWeight="50" capitalization="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" useSubstitutions="0" namedStyle="Regular" textOrientation="horizontal" blendMode="0" fontWordSpacing="0" previewBkgrdColor="255,255,255,255" fontFamily="Ubuntu" fontSizeUnit="Point" allowHtml="0" fontStrikeout="0" fontKerning="1" fontLetterSpacing="0" fontSize="8">
        <families/>
        <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferNoFill="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferSize="0.5" bufferColor="255,255,255,255" bufferOpacity="1" bufferDraw="1"/>
        <text-mask maskType="0" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskSize="1.5" maskEnabled="0" maskJoinStyle="128" maskOpacity="1"/>
        <background shapeRotationType="0" shapeRotation="0" shapeFillColor="255,255,255,255" shapeBorderColor="128,128,128,255" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeJoinStyle="64" shapeDraw="0" shapeRadiiY="0" shapeSVGFile="" shapeOffsetUnit="MM" shapeOpacity="1" shapeRadiiX="0" shapeSizeX="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeBlendMode="0">
          <symbol type="marker" name="markerSymbol" alpha="1" force_rhr="0" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
              <Option type="Map">
                <Option type="QString" name="angle" value="0"/>
                <Option type="QString" name="cap_style" value="square"/>
                <Option type="QString" name="color" value="190,207,80,255"/>
                <Option type="QString" name="horizontal_anchor_point" value="1"/>
                <Option type="QString" name="joinstyle" value="bevel"/>
                <Option type="QString" name="name" value="circle"/>
                <Option type="QString" name="offset" value="0,0"/>
                <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="offset_unit" value="MM"/>
                <Option type="QString" name="outline_color" value="35,35,35,255"/>
                <Option type="QString" name="outline_style" value="solid"/>
                <Option type="QString" name="outline_width" value="0"/>
                <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="outline_width_unit" value="MM"/>
                <Option type="QString" name="scale_method" value="diameter"/>
                <Option type="QString" name="size" value="2"/>
                <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="size_unit" value="MM"/>
                <Option type="QString" name="vertical_anchor_point" value="1"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="square" k="cap_style"/>
              <prop v="190,207,80,255" k="color"/>
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
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol type="fill" name="fillSymbol" alpha="1" force_rhr="0" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleFill" enabled="1" locked="0" pass="0">
              <Option type="Map">
                <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="color" value="255,255,255,255"/>
                <Option type="QString" name="joinstyle" value="bevel"/>
                <Option type="QString" name="offset" value="0,0"/>
                <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="offset_unit" value="MM"/>
                <Option type="QString" name="outline_color" value="128,128,128,255"/>
                <Option type="QString" name="outline_style" value="no"/>
                <Option type="QString" name="outline_width" value="0"/>
                <Option type="QString" name="outline_width_unit" value="MM"/>
                <Option type="QString" name="style" value="solid"/>
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
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowUnder="0" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowDraw="0" shadowRadiusUnit="MM" shadowColor="0,0,0,255"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format wrapChar="" rightDirectionSymbol=">" placeDirectionSymbol="0" addDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" autoWrapLength="0" reverseDirectionSymbol="0" multilineAlign="0" leftDirectionSymbol="&lt;" plussign="0" formatNumbers="0"/>
      <placement rotationUnit="AngleDegrees" priority="5" dist="0" overrunDistance="0" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry" placementFlags="10" overrunDistanceUnit="MM" placement="0" quadOffset="4" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" layerType="PolygonGeometry" lineAnchorClipping="0" geometryGeneratorEnabled="0" xOffset="0" centroidInside="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" repeatDistance="0" lineAnchorPercent="0.5" rotationAngle="0" distUnits="MM" maxCurvedCharAngleIn="25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" polygonPlacementFlags="2" geometryGenerator="" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" yOffset="0" centroidWhole="0" repeatDistanceUnits="MM"/>
      <rendering labelPerPart="0" mergeLines="0" obstacleType="1" scaleMin="0" drawLabels="1" limitNumLabels="0" fontLimitPixelSize="0" fontMinPixelSize="3" upsidedownLabels="0" scaleVisibility="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacle="1" scaleMax="0" obstacleFactor="1" minFeatureSize="0" maxNumLabels="2000" zIndex="0" displayAll="0"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" name="name" value=""/>
          <Option name="properties"/>
          <Option type="QString" name="type" value="collection"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option type="QString" name="anchorPoint" value="pole_of_inaccessibility"/>
          <Option type="int" name="blendMode" value="0"/>
          <Option type="Map" name="ddProperties">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
          <Option type="bool" name="drawToAllParts" value="false"/>
          <Option type="QString" name="enabled" value="0"/>
          <Option type="QString" name="labelAnchorPoint" value="point_on_exterior"/>
          <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; name=&quot;symbol&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
          <Option type="double" name="minLength" value="0"/>
          <Option type="QString" name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="minLengthUnit" value="MM"/>
          <Option type="double" name="offsetFromAnchor" value="0"/>
          <Option type="QString" name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="offsetFromAnchorUnit" value="MM"/>
          <Option type="double" name="offsetFromLabel" value="0"/>
          <Option type="QString" name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="offsetFromLabelUnit" value="MM"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option type="List" name="dualview/previewExpressions">
        <Option type="QString" value="&quot;feat_name&quot;"/>
        <Option type="QString" value="&quot;FEAT_NAME&quot;"/>
      </Option>
      <Option type="QString" name="embeddedWidgets/count" value="0"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory sizeScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" showAxis="0" opacity="1" direction="1" lineSizeType="MM" minScaleDenominator="0" labelPlacementMethod="XHeight" scaleBasedVisibility="0" height="15" sizeType="MM" spacing="0" spacingUnit="MM" enabled="0" minimumSize="0" maxScaleDenominator="1e+08" width="15" diagramOrientation="Up" penAlpha="255" barWidth="5" spacingUnitScale="3x:0,0,0,0,0,0" penColor="#000000" scaleDependency="Area" rotationOffset="270" backgroundColor="#ffffff" penWidth="0" backgroundAlpha="255">
      <fontProperties style="" description="Ubuntu,11,-1,5,50,0,0,0,0,0"/>
      <attribute field="" label="" color="#000000"/>
      <axisSymbol>
        <symbol type="line" name="" alpha="1" force_rhr="0" clip_to_extent="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="5;2"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="35,35,35,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.26"/>
              <Option type="QString" name="line_width_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="trim_distance_end" value="0"/>
              <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="trim_distance_end_unit" value="MM"/>
              <Option type="QString" name="trim_distance_start" value="0"/>
              <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="trim_distance_start_unit" value="MM"/>
              <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
              <Option type="QString" name="use_custom_dash" value="0"/>
              <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="1" zIndex="0" linePlacementFlags="18" dist="0" priority="0" showAll="1" obstacle="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option type="double" name="allowedGapsBuffer" value="0"/>
        <Option type="bool" name="allowedGapsEnabled" value="false"/>
        <Option type="QString" name="allowedGapsLayer" value=""/>
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
    <field configurationFlags="None" name="lot">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="plan">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="lotplan">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tenure">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="feat_name">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="alias_name">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="parcel_typ">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="cover_typ">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="smis_map">
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
    <alias name="" field="lot" index="1"/>
    <alias name="" field="plan" index="2"/>
    <alias name="" field="lotplan" index="3"/>
    <alias name="" field="tenure" index="4"/>
    <alias name="" field="feat_name" index="5"/>
    <alias name="" field="alias_name" index="6"/>
    <alias name="" field="parcel_typ" index="7"/>
    <alias name="" field="cover_typ" index="8"/>
    <alias name="" field="smis_map" index="9"/>
    <alias name="" field="objectid" index="10"/>
    <alias name="" field="layer" index="11"/>
    <alias name="" field="path" index="12"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" field="fid" expression=""/>
    <default applyOnUpdate="0" field="lot" expression=""/>
    <default applyOnUpdate="0" field="plan" expression=""/>
    <default applyOnUpdate="0" field="lotplan" expression=""/>
    <default applyOnUpdate="0" field="tenure" expression=""/>
    <default applyOnUpdate="0" field="feat_name" expression=""/>
    <default applyOnUpdate="0" field="alias_name" expression=""/>
    <default applyOnUpdate="0" field="parcel_typ" expression=""/>
    <default applyOnUpdate="0" field="cover_typ" expression=""/>
    <default applyOnUpdate="0" field="smis_map" expression=""/>
    <default applyOnUpdate="0" field="objectid" expression=""/>
    <default applyOnUpdate="0" field="layer" expression=""/>
    <default applyOnUpdate="0" field="path" expression=""/>
  </defaults>
  <constraints>
    <constraint field="fid" unique_strength="1" exp_strength="0" constraints="3" notnull_strength="1"/>
    <constraint field="lot" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="plan" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="lotplan" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="tenure" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="feat_name" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="alias_name" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="parcel_typ" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="cover_typ" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="smis_map" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="objectid" unique_strength="1" exp_strength="0" constraints="3" notnull_strength="1"/>
    <constraint field="layer" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="path" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="fid" exp="" desc=""/>
    <constraint field="lot" exp="" desc=""/>
    <constraint field="plan" exp="" desc=""/>
    <constraint field="lotplan" exp="" desc=""/>
    <constraint field="tenure" exp="" desc=""/>
    <constraint field="feat_name" exp="" desc=""/>
    <constraint field="alias_name" exp="" desc=""/>
    <constraint field="parcel_typ" exp="" desc=""/>
    <constraint field="cover_typ" exp="" desc=""/>
    <constraint field="smis_map" exp="" desc=""/>
    <constraint field="objectid" exp="" desc=""/>
    <constraint field="layer" exp="" desc=""/>
    <constraint field="path" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{dc2fb4d3-251d-413b-a6bc-51ba4db9e378}"/>
    <actionsetting type="1" name="Copy selected Lot-Plans to clipboard" capture="0" isEnabledOnlyWhenEditable="0" shortTitle="" action="#############################################################################################################&#xa;#                       QGIS Action script for copying Lot/Plan numbers to the clipboard                    #&#xa;#                                  based on selected polygons                                               #&#xa;#                                                                                                           #&#xa;#                                               By Gary Pattemore                                           #&#xa;#          Licence: Creative Commons V4                                                                     #&#xa;#############################################################################################################&#xa;from PyQt5.QtWidgets import QApplication&#xa;from PyQt5.QtWidgets import QMessageBox&#xa;#&#xa;text = ''&#xa;layer = qgis.utils.iface.activeLayer()&#xa;select = layer.selectedFeatures()&#xa;if select == []:&#xa;    msg = QMessageBox.information(None, &quot;Copy error&quot;, &quot;No Lot/Plans selected&quot;)&#xa;else:&#xa;    for i in select:&#xa;        attrs = i.attributes()&#xa;        text = text + ' ' + attrs[3]&#xa;    print(text)&#xa;    select_ok = True&#xa;    clipboard = QApplication.clipboard()&#xa;    clipboard.setText(text)&#xa;    msg = QMessageBox.information(None, &quot;Copy complete&quot;, &quot;Lot/Plan numbers are loaded in the clipboard&quot;)&#xa;#" notificationMessage="" id="{dc2fb4d3-251d-413b-a6bc-51ba4db9e378}" icon="">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting type="1" name="Notification search" capture="0" isEnabledOnlyWhenEditable="0" shortTitle="" action="#############################################################################################################&#xa;#                       QGIS Action script for extracting info from                                         #&#xa;# https://www.data.qld.gov.au/dataset/vegetation-management-register-of-self-assessable-code-notifications  #&#xa;#                               based on a Lot/Plan search.                                                 #&#xa;#   Data from post-20 July 2016 should be clean and reliable.                                               #&#xa;#   Data from pre-20 July 2016 may not be reliable as Lot/Plan entries are not always properly formatted.   #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                               By Otto Pattemore                                           #&#xa;#                                                                                                           #&#xa;#############################################################################################################&#xa;import processing&#xa;import json&#xa;from PyQt5.QtWidgets import *&#xa;from PyQt5.QtGui import QFont, QColor&#xa;class TableMessageBox(QMessageBox):&#xa;    def __init__(self,title, fields,records):&#xa;        QMessageBox.__init__(self)&#xa;        self.setSizeGripEnabled (True)&#xa;        self.records = records&#xa;        self.fields = fields&#xa;        self.setWindowTitle (title)&#xa;&#xa;        #Create QPushButton in QMessageBox        &#xa;        self.addButton (QPushButton('OK'), QMessageBox.YesRole)&#xa;        #Add TableWidget to QMessageBox           &#xa;        self.addTableWidget (self) &#xa;&#xa;        #Return values while clicking QPushButton        &#xa;        currentClick    = self.exec_() &#xa;&#xa;    #Create TableWidget &#xa;    def addTableWidget (self, parentItem):&#xa;        self.tableWidget = QTableWidget(parentItem)&#xa;        self.tableWidget.setGeometry (QtCore.QRect(0, 0, 925, 500))&#xa;        self.tableWidget.setObjectName ('tableWidget')&#xa;        print(len(self.records))&#xa;        self.tableWidget.setColumnCount(len(self.fields))&#xa;        self.tableWidget.setRowCount(len(self.records[&quot;Reference&quot;])+1)&#xa;        for row in range(0,len(self.fields)):&#xa;                table_item = QTableWidgetItem(self.fields[row])&#xa;                font = QFont()&#xa;                font.setBold(True)&#xa;                table_item.setFont(font)&#xa;                self.tableWidget.setItem (0,row,table_item)&#xa;                table_item.setBackground(QColor(&quot;yellow&quot;))&#xa;                for column in range(0,len(self.records[self.fields[row]])):&#xa;                    self.tableWidget.setItem (column+1,row,QTableWidgetItem(self.records[self.fields[row]][column]))&#xa;        self.tableWidget.setWordWrap(True)&#xa;        self.tableWidget.setColumnWidth(2,250)&#xa;        self.tableWidget.setColumnWidth(3,125)&#xa;        self.tableWidget.setColumnWidth(4,300)&#xa;        self.tableWidget.resizeRowsToContents()&#xa;    #Allow resizing of QMessageBox&#xa;    def event(self, e):&#xa;        result = QMessageBox.event(self, e)&#xa;        self.setMinimumWidth(1025)&#xa;        self.setMaximumWidth(16777215)&#xa;        self.setMinimumHeight(400)&#xa;        self.setMaximumHeight(16777215)        &#xa;        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)&#xa;&#xa;        return result   &#xa;def GetJSON(URL):&#xa;    #This method of server access avoids firewall problems&#xa;    params = {&#xa;        'URL' : URL,&#xa;        'OUTPUT' : &quot;TEMPORARY_OUTPUT&quot;&#xa;    }&#xa;    tempLayer = processing.run('native:filedownloader',params)[&quot;OUTPUT&quot;]&#xa;    file = open(tempLayer)&#xa;    return_string = file.read()&#xa;    file.close()&#xa;    return return_string&#xa;lot = str(&quot;[%LOT%]&quot;)&#xa;plan = str(&quot;[%PLAN%]&quot;)&#xa;url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?q='+lot+'/'+plan+'&amp;resource_id=2fdd11f0-e520-46a4-b5e8-cda82a7fcef2'&#xa;json_data = json.loads(GetJSON(url))&#xa;reference_nos = []&#xa;dates = []&#xa;purposes = []&#xa;expiry_dates = []&#xa;notif_status = []&#xa;for i in json_data['result']['records']:&#xa;    print(&quot;ReferenceNo: &quot;+str(i['ReferenceNo']))&#xa;    reference_nos.append(str(i['ReferenceNo']))&#xa;    dates.append(str(i['NotificationDate'])[0:10])&#xa;    purposes.append(str(i['Purpose']))&#xa;    expiry_dates.append(str(i['ExpiryDate'])[0:10])&#xa;    notif_status.append(str(i['NotificationStatus']))&#xa;&#xa;url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?q='+lot+'/'+plan+'&amp;resource_id=ea4ca4b1-91df-46de-8d5e-f687ad162332'&#xa;json_data = json.loads(GetJSON(url))&#xa;for i in json_data['result']['records']:&#xa;    reference_nos.append(str(i['REFERENCE_ID']))&#xa;    purposes.append(str(i['PURPOSE']))&#xa;    notif_status.append(&quot;Historical - probably superseded&quot;)&#xa;&#xa;msg = TableMessageBox('ADVCC notification history for '+lot+plan+' (may not be a complete)',[&quot;Reference&quot;,&quot;Date (Y-M-D)&quot;,&quot;Purpose&quot;,&quot;Expiry (Y-M-D)&quot;,&quot;Code&quot;],{&#xa;    &quot;Reference&quot;:reference_nos,&#xa;    &quot;Date (Y-M-D)&quot;:dates,&#xa;    &quot;Purpose&quot;:purposes,&#xa;    &quot;Expiry (Y-M-D)&quot;:expiry_dates,&#xa;    &quot;Code&quot;:notif_status&#xa;})" notificationMessage="" id="{69072ae3-f4fa-40ad-a1fa-a7659d8b6d8d}" icon="">
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting type="1" name="AMP search" capture="0" isEnabledOnlyWhenEditable="0" shortTitle="" action="#############################################################################################################&#xa;#                       QGIS Action script for extracting info from                                         #&#xa;#                          https://www.data.qld.gov.au/                                                     #&#xa;#                               based on a Lot/Plan search.                                                 #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                               By Otto Pattemore                                           #&#xa;#                                                                                                           #&#xa;#############################################################################################################&#xa;import processing&#xa;import json&#xa;from PyQt5.QtWidgets import *&#xa;class TableMessageBox(QMessageBox):&#xa;    def __init__(self,title, fields,records):&#xa;        QMessageBox.__init__(self)&#xa;        self.setSizeGripEnabled (True)&#xa;        self.records = records&#xa;        self.fields = fields&#xa;        self.setWindowTitle (title)&#xa;&#xa;        #Create QPushButton in QMessageBox        &#xa;        self.addButton (QPushButton('OK'), QMessageBox.YesRole)&#xa;        #Add TableWidget to QMessageBox           &#xa;        self.addTableWidget (self) &#xa;&#xa;        #Return values while clicking QPushButton        &#xa;        currentClick    = self.exec_() &#xa;&#xa;    #Create TableWidget &#xa;    def addTableWidget (self, parentItem):&#xa;        self.tableWidget = QTableWidget(parentItem)&#xa;        self.tableWidget.setGeometry (QtCore.QRect(0, 0, 925, 500))&#xa;        self.tableWidget.setObjectName ('tableWidget')&#xa;        print(len(self.records))&#xa;        self.tableWidget.setColumnCount(len(self.fields))&#xa;        self.tableWidget.setRowCount(len(self.records[&quot;Reference&quot;])+1)&#xa;        for row in range(0,len(self.fields)):&#xa;                table_item = QTableWidgetItem(self.fields[row])&#xa;                font = QFont()&#xa;                font.setBold(True)&#xa;                table_item.setFont(font)&#xa;                self.tableWidget.setItem (0,row,table_item)&#xa;                table_item.setBackground(QColor(&quot;yellow&quot;))&#xa;                for column in range(0,len(self.records[self.fields[row]])):&#xa;                    self.tableWidget.setItem (column+1,row,QTableWidgetItem(self.records[self.fields[row]][column]))&#xa;        self.tableWidget.setWordWrap(True)&#xa;        self.tableWidget.setColumnWidth(2,175)&#xa;        self.tableWidget.setColumnWidth(4,200)&#xa;        self.tableWidget.setColumnWidth(5,200)&#xa;        self.tableWidget.resizeRowsToContents()&#xa;    #Allow resizing of QMessageBox&#xa;    def event(self, e):&#xa;        result = QMessageBox.event(self, e)&#xa;        self.setMinimumWidth(1025)&#xa;        self.setMaximumWidth(16777215)&#xa;        self.setMinimumHeight(400)&#xa;        self.setMaximumHeight(16777215)        &#xa;        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)&#xa;&#xa;        return result   &#xa;def GetJSON(URL):&#xa;    #This method of server access avoids firewall problems&#xa;    params = {&#xa;        'URL' : URL,&#xa;        'OUTPUT' : &quot;TEMPORARY_OUTPUT&quot;&#xa;    }&#xa;    tempLayer = processing.run('native:filedownloader',params)[&quot;OUTPUT&quot;]&#xa;    file = open(tempLayer)&#xa;    return_string = file.read()&#xa;    file.close()&#xa;    return return_string&#xa;lot = str(&quot;[%LOT%]&quot;)&#xa;plan = str(&quot;[%PLAN%]&quot;)&#xa;url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?q='+lot+'/'+plan+'&amp;resource_id=10fadb82-cfb3-4c5d-a49c-6559a0ebe5fb'&#xa;json_data = json.loads(GetJSON(url))&#xa;notif_no = []&#xa;date = []&#xa;purpose = []&#xa;amp_number = []&#xa;amp_name = []&#xa;amp_notes = []&#xa;for i in json_data['result']['records']:&#xa;    notif_no.append(str(i['Notification Number']))&#xa;    date.append(str(i['Notification Date'])[0:10])&#xa;    purpose.append(str(i['Purpose']))&#xa;    amp_number.append(str(i['AMP Number'])[0:10])&#xa;    amp_name.append(str(i['AMP Name']))&#xa;    amp_notes.append(str(i['Notes']))&#xa;#&#xa;msg = TableMessageBox('Area Management Plan notifications for '+lot+plan+' (may not be a complete list)',[&quot;Reference&quot;,&quot;Date&quot;,&quot;Purpose&quot;,&quot;AMP&quot;,&quot;Name&quot;,&quot;Notes&quot;],{&#xa;    &quot;Reference&quot;:notif_no,&#xa;    &quot;Date&quot;:date,&#xa;    &quot;Purpose&quot;:purpose,&#xa;    &quot;AMP&quot;:amp_number,&#xa;    &quot;Name&quot;:amp_name,&#xa;    &quot;Notes&quot;:amp_notes&#xa;})" notificationMessage="" id="{2bb4f41a-5399-476b-b649-3fb99ab8da2f}" icon="">
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" type="actions" hidden="0"/>
      <column width="-1" type="field" name="layer" hidden="0"/>
      <column width="-1" type="field" name="path" hidden="0"/>
      <column width="-1" type="field" name="lot" hidden="0"/>
      <column width="-1" type="field" name="plan" hidden="0"/>
      <column width="-1" type="field" name="lotplan" hidden="0"/>
      <column width="-1" type="field" name="tenure" hidden="0"/>
      <column width="-1" type="field" name="feat_name" hidden="0"/>
      <column width="-1" type="field" name="alias_name" hidden="0"/>
      <column width="-1" type="field" name="parcel_typ" hidden="0"/>
      <column width="-1" type="field" name="cover_typ" hidden="0"/>
      <column width="-1" type="field" name="smis_map" hidden="0"/>
      <column width="-1" type="field" name="objectid" hidden="0"/>
      <column width="-1" type="field" name="fid" hidden="0"/>
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
    <field name="ALIAS_NAME" editable="1"/>
    <field name="COVER_TYP" editable="1"/>
    <field name="FEAT_NAME" editable="1"/>
    <field name="LOT" editable="1"/>
    <field name="LOTPLAN" editable="1"/>
    <field name="OBJECTID" editable="1"/>
    <field name="PARCEL_TYP" editable="1"/>
    <field name="PLAN" editable="1"/>
    <field name="SMIS_MAP" editable="1"/>
    <field name="TENURE" editable="1"/>
    <field name="alias_name" editable="1"/>
    <field name="cover_typ" editable="1"/>
    <field name="feat_name" editable="1"/>
    <field name="fid" editable="1"/>
    <field name="layer" editable="1"/>
    <field name="lot" editable="1"/>
    <field name="lotplan" editable="1"/>
    <field name="objectid" editable="1"/>
    <field name="parcel_typ" editable="1"/>
    <field name="path" editable="1"/>
    <field name="plan" editable="1"/>
    <field name="smis_map" editable="1"/>
    <field name="tenure" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="ALIAS_NAME" labelOnTop="0"/>
    <field name="COVER_TYP" labelOnTop="0"/>
    <field name="FEAT_NAME" labelOnTop="0"/>
    <field name="LOT" labelOnTop="0"/>
    <field name="LOTPLAN" labelOnTop="0"/>
    <field name="OBJECTID" labelOnTop="0"/>
    <field name="PARCEL_TYP" labelOnTop="0"/>
    <field name="PLAN" labelOnTop="0"/>
    <field name="SMIS_MAP" labelOnTop="0"/>
    <field name="TENURE" labelOnTop="0"/>
    <field name="alias_name" labelOnTop="0"/>
    <field name="cover_typ" labelOnTop="0"/>
    <field name="feat_name" labelOnTop="0"/>
    <field name="fid" labelOnTop="0"/>
    <field name="layer" labelOnTop="0"/>
    <field name="lot" labelOnTop="0"/>
    <field name="lotplan" labelOnTop="0"/>
    <field name="objectid" labelOnTop="0"/>
    <field name="parcel_typ" labelOnTop="0"/>
    <field name="path" labelOnTop="0"/>
    <field name="plan" labelOnTop="0"/>
    <field name="smis_map" labelOnTop="0"/>
    <field name="tenure" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="alias_name" reuseLastValue="0"/>
    <field name="cover_typ" reuseLastValue="0"/>
    <field name="feat_name" reuseLastValue="0"/>
    <field name="fid" reuseLastValue="0"/>
    <field name="layer" reuseLastValue="0"/>
    <field name="lot" reuseLastValue="0"/>
    <field name="lotplan" reuseLastValue="0"/>
    <field name="objectid" reuseLastValue="0"/>
    <field name="parcel_typ" reuseLastValue="0"/>
    <field name="path" reuseLastValue="0"/>
    <field name="plan" reuseLastValue="0"/>
    <field name="smis_map" reuseLastValue="0"/>
    <field name="tenure" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"feat_name"</previewExpression>
  <mapTip>&lt;div style = "background-color:coral;">
&lt;h3 style="color:black;"> [% concat("LOTPLAN") %] &lt;br>&lt;/h3>
&lt;a style="color:black;"> [% concat("TENURE") %] &lt;br>&lt;/a>
&lt;a style="color:black;"> [% concat(round($area,2), ' ' , 
	if (@project_area_units = 'hectares', ' ha', 
		if(@project_area_units = 'square meters', ' sq. m.', @project_area_units))) %] &lt;br>&lt;/a>
&lt;a [% concat('href=', "SMIS_MAP") %] style=color:white>Smart Map&lt;/a>
&lt;/div>
</mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
