<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" simplifyAlgorithm="0" labelsEnabled="1" simplifyMaxScale="1" minScale="100000000" styleCategories="AllStyleCategories" maxScale="0" simplifyDrawingTol="1" version="3.14.1-Pi" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal enabled="0" endExpression="" startField="" fixedDuration="0" startExpression="" mode="0" endField="" durationField="" accumulate="0" durationUnit="min">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 attr="TRIM(IF(&quot;S20AH&quot; IS NULL, &quot;VM_STATUS&quot;, CONCAT(&quot;VM_STATUS&quot;,&quot;S20AH&quot;)))&#xa;" symbollevels="1" enableorderby="0" type="categorizedSymbol" forceraster="0">
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
      <symbol name="0" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="10" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="11" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="12" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="0" class="ShapeburstFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="4" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="5" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="6" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="7" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="8" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="9" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
        <layer enabled="1" locked="0" pass="1" class="SimpleFill">
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
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style textOrientation="horizontal" blendMode="0" fontSizeUnit="Point" fontFamily="Sans Serif" fontCapitals="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" multilineHeight="1" textOpacity="1" textColor="0,0,0,255" isExpression="1" fontItalic="0" allowHtml="0" fontWeight="50" fontLetterSpacing="0" fontKerning="1" namedStyle="Normal" previewBkgrdColor="255,255,255,255" fieldName="CONCAT(&quot;RE&quot;, '\n', &quot;PC_LABEL&quot; )" useSubstitutions="0" fontSize="6" fontUnderline="0" fontStrikeout="0">
        <text-buffer bufferDraw="1" bufferJoinStyle="128" bufferSize="0.7" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferBlendMode="0" bufferColor="255,255,255,255" bufferOpacity="1"/>
        <text-mask maskSizeUnits="MM" maskOpacity="1" maskSize="0" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskEnabled="0"/>
        <background shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeSizeY="0" shapeRadiiUnit="MM" shapeSizeX="0" shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeBlendMode="0" shapeOffsetX="0" shapeOpacity="1" shapeOffsetY="0" shapeDraw="0" shapeFillColor="255,255,255,255" shapeOffsetUnit="MM" shapeRotation="0" shapeRadiiY="0" shapeSizeUnit="MM" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
          <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
            <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
              <prop v="0" k="angle"/>
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
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowRadius="1.5" shadowUnder="0" shadowOffsetGlobal="1" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowScale="100" shadowBlendMode="6" shadowRadiusUnit="MM" shadowDraw="0" shadowOpacity="0.7" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format autoWrapLength="0" plussign="0" decimals="3" reverseDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" formatNumbers="0" useMaxLineLengthForAutoWrap="1"/>
      <placement layerType="PolygonGeometry" centroidWhole="0" preserveRotation="1" placement="0" fitInPolygonOnly="0" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="1" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" repeatDistanceUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" polygonPlacementFlags="2" geometryGeneratorType="PointGeometry" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" yOffset="0" distUnits="MM" dist="0" offsetUnits="MM" rotationAngle="0" offsetType="0" maxCurvedCharAngleOut="-25" quadOffset="4" priority="10" overrunDistance="0" overrunDistanceUnit="MM" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" geometryGeneratorEnabled="0"/>
      <rendering upsidedownLabels="0" obstacle="0" labelPerPart="0" maxNumLabels="2000" minFeatureSize="1" scaleVisibility="0" limitNumLabels="0" fontMinPixelSize="3" obstacleType="1" displayAll="0" drawLabels="1" obstacleFactor="2" mergeLines="0" scaleMin="0" zIndex="0" scaleMax="0" fontMaxPixelSize="10000" fontLimitPixelSize="0"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" value="" type="QString"/>
          <Option name="properties"/>
          <Option name="type" value="collection" type="QString"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
          <Option name="ddProperties" type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
          <Option name="drawToAllParts" value="false" type="bool"/>
          <Option name="enabled" value="0" type="QString"/>
          <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
          <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
          <Option name="minLength" value="0" type="double"/>
          <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="minLengthUnit" value="MM" type="QString"/>
          <Option name="offsetFromAnchor" value="0" type="double"/>
          <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
          <Option name="offsetFromLabel" value="0" type="double"/>
          <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions" value="VM_STAT_ID"/>
    <property key="embeddedWidgets/0/id" value="transparency"/>
    <property key="embeddedWidgets/count" value="1"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory backgroundColor="#ffffff" maxScaleDenominator="1e+08" opacity="1" spacingUnitScale="3x:0,0,0,0,0,0" enabled="0" height="15" penColor="#000000" showAxis="0" labelPlacementMethod="XHeight" backgroundAlpha="255" sizeScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" penAlpha="255" scaleDependency="Area" diagramOrientation="Up" penWidth="0" spacingUnit="MM" barWidth="5" direction="1" spacing="0" rotationOffset="270" minScaleDenominator="0" sizeType="MM" lineSizeType="MM" width="15" scaleBasedVisibility="0" minimumSize="0">
      <fontProperties description="Ubuntu,11,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" field="" color="#000000"/>
      <axisSymbol>
        <symbol name="" clip_to_extent="1" force_rhr="0" type="line" alpha="1">
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
  <DiagramLayerSettings priority="0" linePlacementFlags="18" obstacle="0" placement="1" zIndex="0" showAll="1" dist="0">
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
    <field name="fid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="RE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="RE1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="RE2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="RE3">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="RE4">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="RE5">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PERCENT">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PC1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PC2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PC3">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PC4">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PC5">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="RE_LABEL">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="PC_LABEL">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="LANDZONE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BD_STATUS">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BD_SYMBOL">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VM_CLASS">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VM_SYMBOL">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VM_POLY">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VERSION">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="L">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="V">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BVG1M">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BVG1M_PC">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DBVG1M">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DBVG2M">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DBVG5M">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="S20AH">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="S20AI">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="S20AM">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SOURCE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VM_STATUS">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VM_STAT_ID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SCALE">
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
    <field name="MAP_NO">
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
    <alias name="" field="fid" index="0"/>
    <alias name="" field="RE" index="1"/>
    <alias name="" field="RE1" index="2"/>
    <alias name="" field="RE2" index="3"/>
    <alias name="" field="RE3" index="4"/>
    <alias name="" field="RE4" index="5"/>
    <alias name="" field="RE5" index="6"/>
    <alias name="" field="PERCENT" index="7"/>
    <alias name="" field="PC1" index="8"/>
    <alias name="" field="PC2" index="9"/>
    <alias name="" field="PC3" index="10"/>
    <alias name="" field="PC4" index="11"/>
    <alias name="" field="PC5" index="12"/>
    <alias name="" field="RE_LABEL" index="13"/>
    <alias name="" field="PC_LABEL" index="14"/>
    <alias name="" field="LANDZONE" index="15"/>
    <alias name="" field="BD_STATUS" index="16"/>
    <alias name="" field="BD_SYMBOL" index="17"/>
    <alias name="" field="VM_CLASS" index="18"/>
    <alias name="" field="VM_SYMBOL" index="19"/>
    <alias name="" field="VM_POLY" index="20"/>
    <alias name="" field="VERSION" index="21"/>
    <alias name="" field="L" index="22"/>
    <alias name="" field="V" index="23"/>
    <alias name="" field="BVG1M" index="24"/>
    <alias name="" field="BVG1M_PC" index="25"/>
    <alias name="" field="DBVG1M" index="26"/>
    <alias name="" field="DBVG2M" index="27"/>
    <alias name="" field="DBVG5M" index="28"/>
    <alias name="" field="S20AH" index="29"/>
    <alias name="" field="S20AI" index="30"/>
    <alias name="" field="S20AM" index="31"/>
    <alias name="" field="SOURCE" index="32"/>
    <alias name="" field="VM_STATUS" index="33"/>
    <alias name="" field="VM_STAT_ID" index="34"/>
    <alias name="" field="SCALE" index="35"/>
    <alias name="" field="OBJECTID" index="36"/>
    <alias name="" field="MAP_NO" index="37"/>
    <alias name="" field="layer" index="38"/>
    <alias name="" field="path" index="39"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="fid"/>
    <default expression="" applyOnUpdate="0" field="RE"/>
    <default expression="" applyOnUpdate="0" field="RE1"/>
    <default expression="" applyOnUpdate="0" field="RE2"/>
    <default expression="" applyOnUpdate="0" field="RE3"/>
    <default expression="" applyOnUpdate="0" field="RE4"/>
    <default expression="" applyOnUpdate="0" field="RE5"/>
    <default expression="" applyOnUpdate="0" field="PERCENT"/>
    <default expression="" applyOnUpdate="0" field="PC1"/>
    <default expression="" applyOnUpdate="0" field="PC2"/>
    <default expression="" applyOnUpdate="0" field="PC3"/>
    <default expression="" applyOnUpdate="0" field="PC4"/>
    <default expression="" applyOnUpdate="0" field="PC5"/>
    <default expression="" applyOnUpdate="0" field="RE_LABEL"/>
    <default expression="" applyOnUpdate="0" field="PC_LABEL"/>
    <default expression="" applyOnUpdate="0" field="LANDZONE"/>
    <default expression="" applyOnUpdate="0" field="BD_STATUS"/>
    <default expression="" applyOnUpdate="0" field="BD_SYMBOL"/>
    <default expression="" applyOnUpdate="0" field="VM_CLASS"/>
    <default expression="" applyOnUpdate="0" field="VM_SYMBOL"/>
    <default expression="" applyOnUpdate="0" field="VM_POLY"/>
    <default expression="" applyOnUpdate="0" field="VERSION"/>
    <default expression="" applyOnUpdate="0" field="L"/>
    <default expression="" applyOnUpdate="0" field="V"/>
    <default expression="" applyOnUpdate="0" field="BVG1M"/>
    <default expression="" applyOnUpdate="0" field="BVG1M_PC"/>
    <default expression="" applyOnUpdate="0" field="DBVG1M"/>
    <default expression="" applyOnUpdate="0" field="DBVG2M"/>
    <default expression="" applyOnUpdate="0" field="DBVG5M"/>
    <default expression="" applyOnUpdate="0" field="S20AH"/>
    <default expression="" applyOnUpdate="0" field="S20AI"/>
    <default expression="" applyOnUpdate="0" field="S20AM"/>
    <default expression="" applyOnUpdate="0" field="SOURCE"/>
    <default expression="" applyOnUpdate="0" field="VM_STATUS"/>
    <default expression="" applyOnUpdate="0" field="VM_STAT_ID"/>
    <default expression="" applyOnUpdate="0" field="SCALE"/>
    <default expression="" applyOnUpdate="0" field="OBJECTID"/>
    <default expression="" applyOnUpdate="0" field="MAP_NO"/>
    <default expression="" applyOnUpdate="0" field="layer"/>
    <default expression="" applyOnUpdate="0" field="path"/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" exp_strength="0" notnull_strength="1" field="fid" constraints="3"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="RE" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="RE1" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="RE2" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="RE3" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="RE4" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="RE5" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="PERCENT" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="PC1" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="PC2" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="PC3" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="PC4" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="PC5" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="RE_LABEL" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="PC_LABEL" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="LANDZONE" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="BD_STATUS" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="BD_SYMBOL" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="VM_CLASS" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="VM_SYMBOL" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="VM_POLY" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="VERSION" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="L" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="V" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="BVG1M" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="BVG1M_PC" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="DBVG1M" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="DBVG2M" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="DBVG5M" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="S20AH" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="S20AI" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="S20AM" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="SOURCE" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="VM_STATUS" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="VM_STAT_ID" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="SCALE" constraints="0"/>
    <constraint unique_strength="1" exp_strength="0" notnull_strength="1" field="OBJECTID" constraints="3"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="MAP_NO" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="layer" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" field="path" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="fid"/>
    <constraint exp="" desc="" field="RE"/>
    <constraint exp="" desc="" field="RE1"/>
    <constraint exp="" desc="" field="RE2"/>
    <constraint exp="" desc="" field="RE3"/>
    <constraint exp="" desc="" field="RE4"/>
    <constraint exp="" desc="" field="RE5"/>
    <constraint exp="" desc="" field="PERCENT"/>
    <constraint exp="" desc="" field="PC1"/>
    <constraint exp="" desc="" field="PC2"/>
    <constraint exp="" desc="" field="PC3"/>
    <constraint exp="" desc="" field="PC4"/>
    <constraint exp="" desc="" field="PC5"/>
    <constraint exp="" desc="" field="RE_LABEL"/>
    <constraint exp="" desc="" field="PC_LABEL"/>
    <constraint exp="" desc="" field="LANDZONE"/>
    <constraint exp="" desc="" field="BD_STATUS"/>
    <constraint exp="" desc="" field="BD_SYMBOL"/>
    <constraint exp="" desc="" field="VM_CLASS"/>
    <constraint exp="" desc="" field="VM_SYMBOL"/>
    <constraint exp="" desc="" field="VM_POLY"/>
    <constraint exp="" desc="" field="VERSION"/>
    <constraint exp="" desc="" field="L"/>
    <constraint exp="" desc="" field="V"/>
    <constraint exp="" desc="" field="BVG1M"/>
    <constraint exp="" desc="" field="BVG1M_PC"/>
    <constraint exp="" desc="" field="DBVG1M"/>
    <constraint exp="" desc="" field="DBVG2M"/>
    <constraint exp="" desc="" field="DBVG5M"/>
    <constraint exp="" desc="" field="S20AH"/>
    <constraint exp="" desc="" field="S20AI"/>
    <constraint exp="" desc="" field="S20AM"/>
    <constraint exp="" desc="" field="SOURCE"/>
    <constraint exp="" desc="" field="VM_STATUS"/>
    <constraint exp="" desc="" field="VM_STAT_ID"/>
    <constraint exp="" desc="" field="SCALE"/>
    <constraint exp="" desc="" field="OBJECTID"/>
    <constraint exp="" desc="" field="MAP_NO"/>
    <constraint exp="" desc="" field="layer"/>
    <constraint exp="" desc="" field="path"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
    <actionsetting capture="0" notificationMessage="" action="#############################################################################################################&#xa;#                       QGIS Action script for extracting info from                                         #&#xa;#                           https://www.data.qld.gov.au/dataset/                                            #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                               By Otto Pattemore                                           #&#xa;#                                                                                                           #&#xa;#############################################################################################################&#xa;import processing&#xa;import re&#xa;import json&#xa;from PyQt5.QtWidgets import *&#xa;from PyQt5.QtGui import *&#xa;class TableMessageBox(QMessageBox):&#xa;    def __init__(self,title, fields,records):&#xa;        QMessageBox.__init__(self)&#xa;        self.setSizeGripEnabled (True)&#xa;        self.records = records&#xa;        self.fields = fields&#xa;        self.setWindowTitle (title)&#xa;&#xa;        #Create QPushButton in QMessageBox        &#xa;        self.addButton (QPushButton('OK'), QMessageBox.YesRole)&#xa;        #Add TableWidget to QMessageBox           &#xa;        self.addTableWidget (self) &#xa;&#xa;        #Return values while clicking QPushButton        &#xa;        currentClick    = self.exec_() &#xa;&#xa;    #Create TableWidget &#xa;    def addTableWidget (self, parentItem):&#xa;        self.tableWidget = QTableWidget(parentItem)&#xa;        self.tableWidget.setGeometry (QtCore.QRect(0, 0, 925, 500))&#xa;        self.tableWidget.setObjectName ('tableWidget')&#xa;        print(len(self.records))&#xa;        self.tableWidget.setColumnCount(len(self.fields))&#xa;        self.tableWidget.setRowCount(len(self.records[&quot;RE&quot;])+1)&#xa;        for row in range(0,len(self.fields)):&#xa;                table_item = QTableWidgetItem(self.fields[row])&#xa;                font = QFont()&#xa;                font.setBold(True)&#xa;                table_item.setFont(font)&#xa;                self.tableWidget.setItem (0,row,table_item)&#xa;                table_item.setBackground(QColor(&quot;green&quot;))&#xa;                for column in range(0,len(self.records[self.fields[row]])):&#xa;                    self.tableWidget.setItem (column+1,row,QTableWidgetItem(self.records[self.fields[row]][column]))&#xa;        #font = QFont()&#xa;        #font.setBold(True)&#xa;        #self.tableWidget.setHeaderFont(font)&#xa;        self.tableWidget.setWordWrap(True)&#xa;        self.tableWidget.setColumnWidth(1,400)&#xa;        self.tableWidget.setColumnWidth(2,150)&#xa;        self.tableWidget.resizeRowsToContents()&#xa;    #Allow resizing of QMessageBox&#xa;    def event(self, e):&#xa;        result = QMessageBox.event(self, e)&#xa;        self.setMinimumWidth(1025)&#xa;        self.setMaximumWidth(16777215)&#xa;        self.setMinimumHeight(400)&#xa;        self.setMaximumHeight(16777215)        &#xa;        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)&#xa;&#xa;        return result&#xa;def GetJSON(URL):&#xa;    #This method of server access avoids firewall problems&#xa;    params = {&#xa;        'URL' : URL,&#xa;        'OUTPUT' : &quot;TEMPORARY_OUTPUT&quot;&#xa;    }&#xa;    tempLayer = processing.run('native:filedownloader',params)[&quot;OUTPUT&quot;]&#xa;    file = open(tempLayer)&#xa;    return_string = file.read()&#xa;    file.close()&#xa;    return return_string&#xa;# Get REs and remove alphabetic characters if they are present&#xa;RE1 = str(&quot;[%RE1%]&quot;)&#xa;RE1 = re.sub(&quot;[^0-9.-]+&quot;,'',RE1)&#xa;RE2 = str(&quot;[%RE2%]&quot;)&#xa;RE2 = re.sub(&quot;[^0-9.-]+&quot;,'',RE2)&#xa;RE3 = str(&quot;[%RE3%]&quot;)&#xa;RE3 = re.sub(&quot;[^0-9.-]+&quot;,'',RE3)&#xa;RE4 = str(&quot;[%RE4%]&quot;)&#xa;RE4 = re.sub(&quot;[^0-9.-]+&quot;,'',RE4)&#xa;RE5 = str(&quot;[%RE5%]&quot;)&#xa;RE5 = re.sub(&quot;[^0-9.-]+&quot;,'',RE5)&#xa;res = [RE1,RE2,RE3,RE4,RE5]&#xa;short_descriptions = []&#xa;vma_classes = []&#xa;structure = []&#xa;for i in res:&#xa;    url = 'https://www.data.qld.gov.au/api/3/action/datastore_search?resource_id=adb569fd-c660-40ad-a4ed-2b9c3eda7023&amp;filters={&quot;re_id&quot;:&quot;'+str(i)+'&quot;}'&#xa;    json_data = json.loads(GetJSON(url))&#xa;    for j in json_data['result']['records']:&#xa;        short_descriptions.append(j[&quot;Short Description Regulation&quot;])&#xa;        vma_classes.append(j[&quot;vma_class&quot;])&#xa;        structure.append(j[&quot;Structure category&quot;])&#xa;&#xa;msg = TableMessageBox('Regional Ecosystem(s)',[&quot;RE&quot;,&quot;Short description&quot;,&quot;VMA class&quot;,&quot;Structure&quot;],{&#xa;    &quot;RE&quot;:res,&#xa;    &quot;Short description&quot;:short_descriptions,&#xa;    &quot;VMA class&quot;:vma_classes,&#xa;    &quot;Structure&quot;:structure&#xa;})" name="RE description" shortTitle="" isEnabledOnlyWhenEditable="0" id="{ecb5e9bd-a6d1-4280-9d67-37383f163a58}" type="1" icon="">
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
    </actionsetting>
    <actionsetting capture="0" notificationMessage="" action="#############################################################################################################&#xa;#                       QGIS Action script for creating KML with styling                                    #&#xa;#                                                                                                           #&#xa;#   Data is provided under Creative Commons Attribution 4.0 by the Queensland Government                    #&#xa;#                                                                                                           #&#xa;#                                written by Gary and Otto Pattemore                                         #&#xa;#                                released under Creative Commons Attribution 4.0                            #&#xa;#############################################################################################################&#xa;#&#xa;from qgis.core import QgsExpression&#xa;from qgis.PyQt.QtCore import *&#xa;from PyQt5.QtWidgets import *&#xa;import processing&#xa;from qgis.utils import iface&#xa;from os import path&#xa;#&#xa;dir = os.path.expanduser('~')&#xa;# setup progress bar&#xa;progressMessageBar = iface.messageBar().createMessage(&quot;Styling and building Google KML file...&quot;)&#xa;progress = QProgressBar()&#xa;progress.setMaximum(100)&#xa;progress.setAlignment(Qt.AlignLeft|Qt.AlignVCenter)&#xa;progressMessageBar.layout().addWidget(progress)&#xa;iface.messageBar().pushWidget(progressMessageBar, Qgis.Info)&#xa;#&#xa;layer = iface.activeLayer()&#xa;layer.selectAll()&#xa;progress.setValue(1)&#xa;progress.setFormat(&quot;Styling KML...&quot;)&#xa;clone_layer = processing.run(&quot;native:saveselectedfeatures&quot;, {'INPUT': layer, 'OUTPUT': 'memory:'})['OUTPUT']&#xa;layer.removeSelection()&#xa;progress.setValue(2)&#xa;caps = clone_layer.dataProvider().capabilities()&#xa;if caps &amp; QgsVectorDataProvider.AddAttributes:&#xa;    res = clone_layer.dataProvider().addAttributes(&#xa;        [QgsField(&quot;K_Name&quot;, QVariant.String),&#xa;        QgsField(&quot;K_Status&quot;, QVariant.String),&#xa;        QgsField(&quot;OGR_STYLE&quot;, QVariant.String)])&#xa;    clone_layer.updateFields()&#xa;    progress.setValue(10)&#xa;    #&#xa;    clone_layer.startEditing()&#xa;    totalf = clone_layer.featureCount()&#xa;    for i,feat in enumerate(clone_layer.getFeatures()):&#xa;        expr1 = str(feat['RE_LABEL']+' ('+feat['PC_LABEL']+')')&#xa;        expr4 = 'Supporting Map'+' '+expr1&#xa;        if feat['S20AH'] == None:&#xa;            expr2 = str(feat['VM_STATUS'])&#xa;        else:&#xa;            expr2 = str(feat['VM_STATUS']+feat['S20AH'])&#xa;        if expr2 =='rem_end ':&#xa;            expr3 = 'BRUSH(fc:#ff36ff);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='rem_oc ':&#xa;            expr3 = 'BRUSH(fc:#ff650f);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='rem_leastc ':&#xa;            expr3 = 'BRUSH(fc:#7dffb1);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='rem_endVMA S20AH area':&#xa;            expr3 = 'BRUSH(fc:#ff36ff);PEN(c:#ffff73);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='rem_ocVMA S20AH area':&#xa;            expr3 = 'BRUSH(fc:#ff650f);PEN(c:#ffff73);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='rem_leastcVMA S20AH area':&#xa;            expr3 = 'BRUSH(fc:#7dffb1);PEN(c:#ffff73);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='hvr_end ':&#xa;            expr3 = 'BRUSH(fc:#ffa8ff);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='hvr_oc ':&#xa;            expr3 = 'BRUSH(fc:#ffd091);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 =='hvr_leastc ':&#xa;            expr3 = 'BRUSH(fc:#d7ffb1);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 == 'non_remnant ':&#xa;            expr3 = 'BRUSH(fc:#feffff);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        elif expr2 == 'water ':&#xa;            expr3 = 'BRUSH(fc:#e1ffff);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        else:&#xa;            expr3 = 'BRUSH(fc:#ff0000);PEN(c:#000000);LABEL(f:&quot;Arial, Helvetica&quot;, s:12pt, t:&quot;'+expr4+'&quot;)'&#xa;        #print(expr1, ' ' , expr2, ' ' , expr3, ' ')&#xa;        feat['K_Name'] = expr1&#xa;        feat['K_Status'] = expr2&#xa;        feat['OGR_STYLE'] = expr3&#xa;        clone_layer.updateFeature(feat)&#xa;        progress.setValue(int(i/totalf*40)+10)&#xa;    clone_layer.commitChanges()&#xa;    #&#xa;#&#xa;progress.setValue(50)&#xa;progress.setFormat(&quot;Building Google KML file...  (may take a while)&quot;)&#xa;preferedName = str(&quot;[% concat(@layer_name ,'_', now()) %]&quot;)[:-10]&#xa;preferedName = dir+'/'+preferedName+'.kml'&#xa;fname, _ = QFileDialog.getSaveFileName(None, &quot;Save Google KML file&quot;, preferedName, &quot;Google KML (*.kml)&quot;)&#xa;project = QgsProject.instance()&#xa;canvas = iface.mapCanvas()&#xa;canvasExtent = canvas.extent()&#xa;xmin = str(canvasExtent.xMinimum())&#xa;ymin = str(canvasExtent.yMinimum())&#xa;xmax = str(canvasExtent.xMaximum())&#xa;ymax = str(canvasExtent.yMaximum())&#xa;ExtentString = xmin+&quot; &quot;+ymin+&quot; &quot;+xmax+&quot; &quot;+ymax&#xa;options = '-clipsrc '+ExtentString&#xa;progress.setValue(60)&#xa;kml_layer = processing.run(&quot;gdal:convertformat&quot;, {'INPUT': clone_layer, 'OPTIONS': options, 'OUTPUT': str(fname)})['OUTPUT']&#xa;progress.setValue(100)&#xa;iface.messageBar().clearWidgets()&#xa;QMessageBox.about(None, &quot;Create Google KML&quot;, &quot;Google KML file saved as: &quot;+fname)&#xa;#&#xa;#&#xa;&#xa;" name="Create Google Earth KML file" shortTitle="" isEnabledOnlyWhenEditable="0" id="{3cc04ef1-3911-456d-8da4-9409cb569542}" type="1" icon="">
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" name="RE" hidden="0" type="field"/>
      <column width="-1" name="RE1" hidden="0" type="field"/>
      <column width="-1" name="RE2" hidden="0" type="field"/>
      <column width="-1" name="RE3" hidden="0" type="field"/>
      <column width="-1" name="RE4" hidden="0" type="field"/>
      <column width="-1" name="RE5" hidden="0" type="field"/>
      <column width="-1" name="PERCENT" hidden="0" type="field"/>
      <column width="-1" name="PC1" hidden="0" type="field"/>
      <column width="-1" name="PC2" hidden="0" type="field"/>
      <column width="-1" name="PC3" hidden="0" type="field"/>
      <column width="-1" name="PC4" hidden="0" type="field"/>
      <column width="-1" name="PC5" hidden="0" type="field"/>
      <column width="-1" name="RE_LABEL" hidden="0" type="field"/>
      <column width="-1" name="PC_LABEL" hidden="0" type="field"/>
      <column width="-1" name="LANDZONE" hidden="0" type="field"/>
      <column width="-1" name="BD_STATUS" hidden="0" type="field"/>
      <column width="-1" name="BD_SYMBOL" hidden="0" type="field"/>
      <column width="-1" name="VM_CLASS" hidden="0" type="field"/>
      <column width="-1" name="VM_SYMBOL" hidden="0" type="field"/>
      <column width="-1" name="VM_POLY" hidden="0" type="field"/>
      <column width="-1" name="VERSION" hidden="0" type="field"/>
      <column width="-1" name="L" hidden="0" type="field"/>
      <column width="-1" name="V" hidden="0" type="field"/>
      <column width="-1" name="BVG1M" hidden="0" type="field"/>
      <column width="-1" name="BVG1M_PC" hidden="0" type="field"/>
      <column width="-1" name="DBVG1M" hidden="0" type="field"/>
      <column width="-1" name="DBVG2M" hidden="0" type="field"/>
      <column width="-1" name="DBVG5M" hidden="0" type="field"/>
      <column width="262" name="S20AH" hidden="0" type="field"/>
      <column width="-1" name="S20AI" hidden="0" type="field"/>
      <column width="-1" name="S20AM" hidden="0" type="field"/>
      <column width="-1" name="SOURCE" hidden="0" type="field"/>
      <column width="-1" name="VM_STATUS" hidden="0" type="field"/>
      <column width="-1" name="VM_STAT_ID" hidden="0" type="field"/>
      <column width="-1" name="SCALE" hidden="0" type="field"/>
      <column width="-1" name="OBJECTID" hidden="0" type="field"/>
      <column width="-1" name="MAP_NO" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" name="layer" hidden="0" type="field"/>
      <column width="-1" name="path" hidden="0" type="field"/>
      <column width="-1" name="fid" hidden="0" type="field"/>
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
    <field name="fid" editable="1"/>
    <field name="layer" editable="1"/>
    <field name="path" editable="1"/>
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
    <field name="fid" labelOnTop="0"/>
    <field name="layer" labelOnTop="0"/>
    <field name="path" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"VM_STAT_ID"</previewExpression>
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
