<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" maxScale="0" hasScaleBasedVisibilityFlag="0" version="3.14.0-Pi" simplifyAlgorithm="0" simplifyDrawingTol="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" minScale="100000000" labelsEnabled="1" simplifyDrawingHints="1" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal mode="0" startField="" fixedDuration="0" enabled="0" endExpression="" accumulate="0" startExpression="" endField="" durationField="" durationUnit="min">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" type="categorizedSymbol" attr="concat(&quot;TENURE&quot;,',',&quot;COVER_TYP&quot;,',',&quot;PARCEL_TYP&quot;)" symbollevels="0" forceraster="0">
    <categories>
      <category value="Freehold,Base,Lot Type Parcel" render="true" symbol="0" label="Freehold, Base, Lot Type Parcel"/>
      <category value="Freehold,Strata,Lot Type Parcel" render="true" symbol="1" label="Freehold, Strata, Lot Type Parcel"/>
      <category value="Freehold,Volumetric,Lot Type Parcel" render="true" symbol="2" label="Freehold, Volumetric, Lot Type Parcel"/>
      <category value="Lands Lease,Base,Lot Type Parcel" render="true" symbol="3" label="Lands Lease, Base, Lot Type Parcel"/>
      <category value="Lands Lease,Strata,Lot Type Parcel" render="true" symbol="4" label="Lands Lease, Strata, Lot Type Parcel"/>
      <category value="Lands Lease,Volumetric,Lot Type Parcel" render="true" symbol="5" label="Lands Lease, Volumetric, Lot Type Parcel"/>
      <category value="State Land,Base,Lot Type Parcel" render="true" symbol="6" label="State Land, Base, Lot Type Parcel"/>
      <category value="State Land,Strata,Lot Type Parcel" render="true" symbol="7" label="State Land, Strata, Lot Type Parcel"/>
      <category value="State Land,Volumetric,Lot Type Parcel" render="true" symbol="8" label="State Land, Volumetric, Lot Type Parcel"/>
      <category value="National Park,Base,Lot Type Parcel" render="true" symbol="9" label="National Park, Base, Lot Type Parcel"/>
      <category value="National Park,Strata,Lot Type Parcel" render="true" symbol="10" label="National Park, Strata, Lot Type Parcel"/>
      <category value="Reserve,Base,Lot Type Parcel" render="true" symbol="11" label="Reserve, Base, Lot Type Parcel"/>
      <category value="Reserve,Strata,Lot Type Parcel" render="true" symbol="12" label="Reserve, Strata, Lot Type Parcel"/>
      <category value="Reserve,Volumetric,Lot Type Parcel" render="true" symbol="13" label="Reserve, Volumetric, Lot Type Parcel"/>
      <category value="Forest Reserve,Base,Lot Type Parcel" render="true" symbol="14" label="Forest Reserve, Base, Lot Type Parcel"/>
      <category value="State Forest,Base,Lot Type Parcel" render="true" symbol="15" label="State Forest, Base, Lot Type Parcel"/>
      <category value="Timber Reserve,Base,Lot Type Parcel" render="true" symbol="16" label="Timber Reserve, Base, Lot Type Parcel"/>
    </categories>
    <symbols>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="0">
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="1">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="10">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="11">
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="12">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="13">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="14">
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="15">
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="16">
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="2">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="3">
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="4">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="5">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="6">
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="7">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="8">
        <layer class="RasterFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="9">
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
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
      <text-style useSubstitutions="0" textOrientation="horizontal" fontSizeUnit="Point" fontWeight="50" fontKerning="1" blendMode="0" previewBkgrdColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="LOTPLAN" isExpression="0" namedStyle="Regular" textColor="0,0,255,255" fontSize="8" textOpacity="1" fontWordSpacing="0" fontFamily="Ubuntu" allowHtml="0" multilineHeight="1" fontCapitals="0" fontItalic="0" fontUnderline="0" fontLetterSpacing="0" fontStrikeout="0">
        <text-buffer bufferSize="0.5" bufferOpacity="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
        <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskSizeUnits="MM" maskEnabled="0" maskedSymbolLayers="" maskSize="1.5" maskOpacity="1"/>
        <background shapeOffsetY="0" shapeSVGFile="" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeJoinStyle="64" shapeRadiiX="0" shapeRotationType="0" shapeType="0" shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeDraw="0" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeOpacity="1" shapeSizeUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeBlendMode="0" shapeBorderColor="128,128,128,255" shapeBorderWidthUnit="MM" shapeRadiiUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
          <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
            <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
              <prop v="0" k="angle"/>
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
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowOffsetUnit="MM" shadowScale="100" shadowBlendMode="6" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowUnder="0" shadowOpacity="0.7" shadowRadiusAlphaOnly="0" shadowRadius="1.5"/>
        <dd_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format rightDirectionSymbol=">" plussign="0" addDirectionSymbol="0" decimals="3" placeDirectionSymbol="0" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0" multilineAlign="0" leftDirectionSymbol="&lt;"/>
      <placement predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" repeatDistance="0" overrunDistanceUnit="MM" repeatDistanceUnits="MM" xOffset="0" yOffset="0" offsetUnits="MM" placement="0" centroidWhole="0" distUnits="MM" priority="5" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" offsetType="0" polygonPlacementFlags="2" rotationAngle="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" dist="0" fitInPolygonOnly="0" overrunDistance="0" quadOffset="4" centroidInside="1" geometryGenerator=""/>
      <rendering displayAll="0" scaleVisibility="0" drawLabels="1" obstacleFactor="1" fontMinPixelSize="3" fontMaxPixelSize="10000" minFeatureSize="0" limitNumLabels="0" scaleMax="0" labelPerPart="0" zIndex="0" mergeLines="0" upsidedownLabels="0" obstacleType="1" fontLimitPixelSize="0" maxNumLabels="2000" obstacle="1" scaleMin="0"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" type="QString" name="name"/>
          <Option name="properties"/>
          <Option value="collection" type="QString" name="type"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
          <Option type="Map" name="ddProperties">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
          <Option value="false" type="bool" name="drawToAllParts"/>
          <Option value="0" type="QString" name="enabled"/>
          <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
          <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
          <Option value="0" type="double" name="minLength"/>
          <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
          <Option value="MM" type="QString" name="minLengthUnit"/>
          <Option value="0" type="double" name="offsetFromAnchor"/>
          <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
          <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
          <Option value="0" type="double" name="offsetFromLabel"/>
          <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
          <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"FEAT_NAME"</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory rotationOffset="270" spacingUnitScale="3x:0,0,0,0,0,0" enabled="0" minScaleDenominator="0" opacity="1" height="15" minimumSize="0" backgroundAlpha="255" sizeType="MM" direction="1" sizeScale="3x:0,0,0,0,0,0" spacing="0" labelPlacementMethod="XHeight" penAlpha="255" showAxis="0" scaleDependency="Area" maxScaleDenominator="1e+08" penWidth="0" backgroundColor="#ffffff" spacingUnit="MM" diagramOrientation="Up" barWidth="5" scaleBasedVisibility="0" lineSizeScale="3x:0,0,0,0,0,0" penColor="#000000" width="15" lineSizeType="MM">
      <fontProperties description="Ubuntu,11,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" color="#000000" field=""/>
      <axisSymbol>
        <symbol type="line" clip_to_extent="1" force_rhr="0" alpha="1" name="">
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
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
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" linePlacementFlags="18" priority="0" zIndex="0" showAll="1" placement="1" dist="0">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option value="0" type="double" name="allowedGapsBuffer"/>
        <Option value="false" type="bool" name="allowedGapsEnabled"/>
        <Option value="" type="QString" name="allowedGapsLayer"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="fid">
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
    <field name="LOT">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PLAN">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LOTPLAN">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="TENURE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FEAT_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ALIAS_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="COVER_TYP">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PARCEL_TYP">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SMIS_MAP">
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
    <alias index="0" name="" field="fid"/>
    <alias index="1" name="" field="OBJECTID"/>
    <alias index="2" name="" field="LOT"/>
    <alias index="3" name="" field="PLAN"/>
    <alias index="4" name="" field="LOTPLAN"/>
    <alias index="5" name="" field="TENURE"/>
    <alias index="6" name="" field="FEAT_NAME"/>
    <alias index="7" name="" field="ALIAS_NAME"/>
    <alias index="8" name="" field="COVER_TYP"/>
    <alias index="9" name="" field="PARCEL_TYP"/>
    <alias index="10" name="" field="SMIS_MAP"/>
    <alias index="11" name="" field="layer"/>
    <alias index="12" name="" field="path"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="fid" applyOnUpdate="0"/>
    <default expression="" field="OBJECTID" applyOnUpdate="0"/>
    <default expression="" field="LOT" applyOnUpdate="0"/>
    <default expression="" field="PLAN" applyOnUpdate="0"/>
    <default expression="" field="LOTPLAN" applyOnUpdate="0"/>
    <default expression="" field="TENURE" applyOnUpdate="0"/>
    <default expression="" field="FEAT_NAME" applyOnUpdate="0"/>
    <default expression="" field="ALIAS_NAME" applyOnUpdate="0"/>
    <default expression="" field="COVER_TYP" applyOnUpdate="0"/>
    <default expression="" field="PARCEL_TYP" applyOnUpdate="0"/>
    <default expression="" field="SMIS_MAP" applyOnUpdate="0"/>
    <default expression="" field="layer" applyOnUpdate="0"/>
    <default expression="" field="path" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" field="fid" exp_strength="0" constraints="3" notnull_strength="1"/>
    <constraint unique_strength="1" field="OBJECTID" exp_strength="0" constraints="3" notnull_strength="1"/>
    <constraint unique_strength="0" field="LOT" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="PLAN" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="LOTPLAN" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="TENURE" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="FEAT_NAME" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="ALIAS_NAME" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="COVER_TYP" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="PARCEL_TYP" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="SMIS_MAP" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="layer" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="path" exp_strength="0" constraints="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="fid"/>
    <constraint exp="" desc="" field="OBJECTID"/>
    <constraint exp="" desc="" field="LOT"/>
    <constraint exp="" desc="" field="PLAN"/>
    <constraint exp="" desc="" field="LOTPLAN"/>
    <constraint exp="" desc="" field="TENURE"/>
    <constraint exp="" desc="" field="FEAT_NAME"/>
    <constraint exp="" desc="" field="ALIAS_NAME"/>
    <constraint exp="" desc="" field="COVER_TYP"/>
    <constraint exp="" desc="" field="PARCEL_TYP"/>
    <constraint exp="" desc="" field="SMIS_MAP"/>
    <constraint exp="" desc="" field="layer"/>
    <constraint exp="" desc="" field="path"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{2d5157c4-d509-41d8-89ed-92e9b05fbed9}" key="Canvas"/>
    <actionsetting shortTitle="" isEnabledOnlyWhenEditable="0" id="{dc2fb4d3-251d-413b-a6bc-51ba4db9e378}" type="1" capture="0" icon="" notificationMessage="" name="Copy selected Lot-Plans to clipboard" action="#############################################################################################################&#xa;#                       QGIS Action script for copying Lot/Plan numbers to the clipboard                    #&#xa;#                                  based on selected polygons                                               #&#xa;#                                                                                                           #&#xa;#                                               By Gary Pattemore                                           #&#xa;#          Licence: Creative Commons V4                                                                     #&#xa;#############################################################################################################&#xa;from PyQt5.QtWidgets import QApplication&#xa;from PyQt5.QtWidgets import QMessageBox&#xa;#&#xa;text = ''&#xa;layer = qgis.utils.iface.activeLayer()&#xa;select = layer.selectedFeatures()&#xa;if select == []:&#xa;    msg = QMessageBox.information(None, &quot;Copy error&quot;, &quot;No Lot/Plans selected&quot;)&#xa;else:&#xa;    for i in select:&#xa;        attrs = i.attributes()&#xa;        text = text + ' ' + attrs[4]&#xa;    print(text)&#xa;    select_ok = True&#xa;    clipboard = QApplication.clipboard()&#xa;    clipboard.setText(text)&#xa;    msg = QMessageBox.information(None, &quot;Copy complete&quot;, &quot;Lot/Plan numbers are loaded in the clipboard&quot;)&#xa;#">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting shortTitle="" isEnabledOnlyWhenEditable="0" id="{69072ae3-f4fa-40ad-a1fa-a7659d8b6d8d}" type="1" capture="0" icon="" notificationMessage="" name="Notification search" action="#############################################################################################################&#xa;#                       QGIS Action script for extracting info from                                         #&#xa;# https://www.data.qld.gov.au/dataset/vegetation-management-register-of-self-assessable-code-notifications  #&#xa;#                               based on a Lot/Plan search.                                                 #&#xa;#   Data from post-20 July 2016 should be clean and reliable.                                               #&#xa;#   Data from pre-20 July 2016 may not be reliable as Lot/Plan entries are not always properly formatted.   #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                               By Otto Pattemore                                           #&#xa;#                                                                                                           #&#xa;#############################################################################################################&#xa;import processing&#xa;import json&#xa;from PyQt5.QtWidgets import *&#xa;from PyQt5.QtGui import QFont, QColor&#xa;class TableMessageBox(QMessageBox):&#xa;    def __init__(self,title, fields,records):&#xa;        QMessageBox.__init__(self)&#xa;        self.setSizeGripEnabled (True)&#xa;        self.records = records&#xa;        self.fields = fields&#xa;        self.setWindowTitle (title)&#xa;&#xa;        #Create QPushButton in QMessageBox        &#xa;        self.addButton (QPushButton('OK'), QMessageBox.YesRole)&#xa;        #Add TableWidget to QMessageBox           &#xa;        self.addTableWidget (self) &#xa;&#xa;        #Return values while clicking QPushButton        &#xa;        currentClick    = self.exec_() &#xa;&#xa;    #Create TableWidget &#xa;    def addTableWidget (self, parentItem):&#xa;        self.tableWidget = QTableWidget(parentItem)&#xa;        self.tableWidget.setGeometry (QtCore.QRect(0, 0, 925, 500))&#xa;        self.tableWidget.setObjectName ('tableWidget')&#xa;        print(len(self.records))&#xa;        self.tableWidget.setColumnCount(len(self.fields))&#xa;        self.tableWidget.setRowCount(len(self.records[&quot;Reference&quot;])+1)&#xa;        for row in range(0,len(self.fields)):&#xa;                table_item = QTableWidgetItem(self.fields[row])&#xa;                font = QFont()&#xa;                font.setBold(True)&#xa;                table_item.setFont(font)&#xa;                self.tableWidget.setItem (0,row,table_item)&#xa;                table_item.setBackground(QColor(&quot;yellow&quot;))&#xa;                for column in range(0,len(self.records[self.fields[row]])):&#xa;                    self.tableWidget.setItem (column+1,row,QTableWidgetItem(self.records[self.fields[row]][column]))&#xa;        self.tableWidget.setWordWrap(True)&#xa;        self.tableWidget.setColumnWidth(2,250)&#xa;        self.tableWidget.setColumnWidth(3,125)&#xa;        self.tableWidget.setColumnWidth(4,300)&#xa;        self.tableWidget.resizeRowsToContents()&#xa;    #Allow resizing of QMessageBox&#xa;    def event(self, e):&#xa;        result = QMessageBox.event(self, e)&#xa;        self.setMinimumWidth(1025)&#xa;        self.setMaximumWidth(16777215)&#xa;        self.setMinimumHeight(400)&#xa;        self.setMaximumHeight(16777215)        &#xa;        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)&#xa;&#xa;        return result   &#xa;def GetJSON(URL):&#xa;    #This method of server access avoids firewall problems&#xa;    params = {&#xa;        'URL' : URL,&#xa;        'OUTPUT' : &quot;TEMPORARY_OUTPUT&quot;&#xa;    }&#xa;    tempLayer = processing.run('native:filedownloader',params)[&quot;OUTPUT&quot;]&#xa;    file = open(tempLayer)&#xa;    return_string = file.read()&#xa;    file.close()&#xa;    return return_string&#xa;lot = str(&quot;[%LOT%]&quot;)&#xa;plan = str(&quot;[%PLAN%]&quot;)&#xa;url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?q='+lot+'/'+plan+'&amp;resource_id=2fdd11f0-e520-46a4-b5e8-cda82a7fcef2'&#xa;json_data = json.loads(GetJSON(url))&#xa;reference_nos = []&#xa;dates = []&#xa;purposes = []&#xa;expiry_dates = []&#xa;notif_status = []&#xa;for i in json_data['result']['records']:&#xa;    print(&quot;ReferenceNo: &quot;+str(i['ReferenceNo']))&#xa;    reference_nos.append(str(i['ReferenceNo']))&#xa;    dates.append(str(i['NotificationDate'])[0:10])&#xa;    purposes.append(str(i['Purpose']))&#xa;    expiry_dates.append(str(i['ExpiryDate'])[0:10])&#xa;    notif_status.append(str(i['NotificationStatus']))&#xa;&#xa;url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?q='+lot+'/'+plan+'&amp;resource_id=ea4ca4b1-91df-46de-8d5e-f687ad162332'&#xa;json_data = json.loads(GetJSON(url))&#xa;for i in json_data['result']['records']:&#xa;    reference_nos.append(str(i['REFERENCE_ID']))&#xa;    purposes.append(str(i['PURPOSE']))&#xa;    notif_status.append(&quot;Historical - probably superseded&quot;)&#xa;&#xa;msg = TableMessageBox('ADVCC notification history for '+lot+plan+' (may not be a complete)',[&quot;Reference&quot;,&quot;Date (Y-M-D)&quot;,&quot;Purpose&quot;,&quot;Expiry (Y-M-D)&quot;,&quot;Code&quot;],{&#xa;    &quot;Reference&quot;:reference_nos,&#xa;    &quot;Date (Y-M-D)&quot;:dates,&#xa;    &quot;Purpose&quot;:purposes,&#xa;    &quot;Expiry (Y-M-D)&quot;:expiry_dates,&#xa;    &quot;Code&quot;:notif_status&#xa;})">
      <actionScope id="Field"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting shortTitle="" isEnabledOnlyWhenEditable="0" id="{2bb4f41a-5399-476b-b649-3fb99ab8da2f}" type="1" capture="0" icon="" notificationMessage="" name="AMP search" action="#############################################################################################################&#xa;#                       QGIS Action script for extracting info from                                         #&#xa;#                          https://www.data.qld.gov.au/                                                     #&#xa;#                               based on a Lot/Plan search.                                                 #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                               By Otto Pattemore                                           #&#xa;#                                                                                                           #&#xa;#############################################################################################################&#xa;import processing&#xa;import json&#xa;from PyQt5.QtWidgets import *&#xa;class TableMessageBox(QMessageBox):&#xa;    def __init__(self,title, fields,records):&#xa;        QMessageBox.__init__(self)&#xa;        self.setSizeGripEnabled (True)&#xa;        self.records = records&#xa;        self.fields = fields&#xa;        self.setWindowTitle (title)&#xa;&#xa;        #Create QPushButton in QMessageBox        &#xa;        self.addButton (QPushButton('OK'), QMessageBox.YesRole)&#xa;        #Add TableWidget to QMessageBox           &#xa;        self.addTableWidget (self) &#xa;&#xa;        #Return values while clicking QPushButton        &#xa;        currentClick    = self.exec_() &#xa;&#xa;    #Create TableWidget &#xa;    def addTableWidget (self, parentItem):&#xa;        self.tableWidget = QTableWidget(parentItem)&#xa;        self.tableWidget.setGeometry (QtCore.QRect(0, 0, 925, 500))&#xa;        self.tableWidget.setObjectName ('tableWidget')&#xa;        print(len(self.records))&#xa;        self.tableWidget.setColumnCount(len(self.fields))&#xa;        self.tableWidget.setRowCount(len(self.records[&quot;Reference&quot;])+1)&#xa;        for row in range(0,len(self.fields)):&#xa;                table_item = QTableWidgetItem(self.fields[row])&#xa;                font = QFont()&#xa;                font.setBold(True)&#xa;                table_item.setFont(font)&#xa;                self.tableWidget.setItem (0,row,table_item)&#xa;                table_item.setBackground(QColor(&quot;yellow&quot;))&#xa;                for column in range(0,len(self.records[self.fields[row]])):&#xa;                    self.tableWidget.setItem (column+1,row,QTableWidgetItem(self.records[self.fields[row]][column]))&#xa;        self.tableWidget.setWordWrap(True)&#xa;        self.tableWidget.setColumnWidth(2,175)&#xa;        self.tableWidget.setColumnWidth(4,200)&#xa;        self.tableWidget.setColumnWidth(5,200)&#xa;        self.tableWidget.resizeRowsToContents()&#xa;    #Allow resizing of QMessageBox&#xa;    def event(self, e):&#xa;        result = QMessageBox.event(self, e)&#xa;        self.setMinimumWidth(1025)&#xa;        self.setMaximumWidth(16777215)&#xa;        self.setMinimumHeight(400)&#xa;        self.setMaximumHeight(16777215)        &#xa;        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)&#xa;&#xa;        return result   &#xa;def GetJSON(URL):&#xa;    #This method of server access avoids firewall problems&#xa;    params = {&#xa;        'URL' : URL,&#xa;        'OUTPUT' : &quot;TEMPORARY_OUTPUT&quot;&#xa;    }&#xa;    tempLayer = processing.run('native:filedownloader',params)[&quot;OUTPUT&quot;]&#xa;    file = open(tempLayer)&#xa;    return_string = file.read()&#xa;    file.close()&#xa;    return return_string&#xa;lot = str(&quot;[%LOT%]&quot;)&#xa;plan = str(&quot;[%PLAN%]&quot;)&#xa;url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?q='+lot+'/'+plan+'&amp;resource_id=10fadb82-cfb3-4c5d-a49c-6559a0ebe5fb'&#xa;json_data = json.loads(GetJSON(url))&#xa;notif_no = []&#xa;date = []&#xa;purpose = []&#xa;amp_number = []&#xa;amp_name = []&#xa;amp_notes = []&#xa;for i in json_data['result']['records']:&#xa;    notif_no.append(str(i['Notification Number']))&#xa;    date.append(str(i['Interaction Date'])[0:10])&#xa;    purpose.append(str(i['Purpose']))&#xa;    amp_number.append(str(i['AMP Number'])[0:10])&#xa;    amp_name.append(str(i['AMP Name']))&#xa;    amp_notes.append(str(i['Notes']))&#xa;#&#xa;msg = TableMessageBox('Area Management Plan notifications for '+lot+plan+' (may not be a complete list)',[&quot;Reference&quot;,&quot;Date&quot;,&quot;Purpose&quot;,&quot;AMP&quot;,&quot;Name&quot;,&quot;Notes&quot;],{&#xa;    &quot;Reference&quot;:notif_no,&#xa;    &quot;Date&quot;:date,&#xa;    &quot;Purpose&quot;:purpose,&#xa;    &quot;AMP&quot;:amp_number,&#xa;    &quot;Name&quot;:amp_name,&#xa;    &quot;Notes&quot;:amp_notes&#xa;})">
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" hidden="0" name="OBJECTID" width="-1"/>
      <column type="field" hidden="0" name="LOT" width="-1"/>
      <column type="field" hidden="0" name="PLAN" width="-1"/>
      <column type="field" hidden="0" name="LOTPLAN" width="-1"/>
      <column type="field" hidden="0" name="TENURE" width="-1"/>
      <column type="field" hidden="0" name="FEAT_NAME" width="-1"/>
      <column type="field" hidden="0" name="ALIAS_NAME" width="-1"/>
      <column type="field" hidden="0" name="COVER_TYP" width="-1"/>
      <column type="field" hidden="0" name="PARCEL_TYP" width="-1"/>
      <column type="field" hidden="0" name="SMIS_MAP" width="671"/>
      <column type="actions" hidden="0" width="-1"/>
      <column type="field" hidden="0" name="layer" width="-1"/>
      <column type="field" hidden="0" name="path" width="-1"/>
      <column type="field" hidden="0" name="fid" width="-1"/>
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
    <field name="fid" editable="1"/>
    <field name="layer" editable="1"/>
    <field name="path" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="ALIAS_NAME"/>
    <field labelOnTop="0" name="COVER_TYP"/>
    <field labelOnTop="0" name="FEAT_NAME"/>
    <field labelOnTop="0" name="LOT"/>
    <field labelOnTop="0" name="LOTPLAN"/>
    <field labelOnTop="0" name="OBJECTID"/>
    <field labelOnTop="0" name="PARCEL_TYP"/>
    <field labelOnTop="0" name="PLAN"/>
    <field labelOnTop="0" name="SMIS_MAP"/>
    <field labelOnTop="0" name="TENURE"/>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="layer"/>
    <field labelOnTop="0" name="path"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"FEAT_NAME"</previewExpression>
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
