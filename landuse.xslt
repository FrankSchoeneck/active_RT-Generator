<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="landuse">
	<!-- city and industrial areas -->
	<rule e="way" k="highway|landuse" v="*" zoom-min="8">
		<rule e="way" k="landuse" v="residential|construction">
			<area fill="#E7E7E7" />
		</rule>
		<rule e="way" k="landuse" v="commercial">
			<area fill="#DBDBDB" stroke="#c6c6c6" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="retail|garages|greenfield">
			<area fill="#FFFEFE" stroke="#e4e4e4" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="farm|farmland">
			<area fill="#FFFEFE" />
		</rule>
		<rule e="way" k="landuse" v="farmyard">
			<area fill="#E7E7E7" stroke="#e4e4e4" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="railway">
			<area fill="#FFFEFE" stroke="#e4e4e4" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="brownfield">
			<area fill="#FFFEFE" stroke="#e4e4e4" stroke-width="0.2" />
		</rule>
		<rule e="way" k="landuse" v="industrial">
			<area fill="#DBDBDB" stroke="#e4e4e4" stroke-width="0.2" />
			<rule e="way" k="*" v="*" zoom-min="15" zoom-max="17">
				<caption k="name" font-style="normal" font-size="10" fill="#5A5A5A" stroke="#FFFFFF" stroke-width="1.5" />
			</rule>
		</rule>
		<rule e="way" k="landuse" v="landfill">
			<area fill="#EFF5E1" stroke="#556b2f" stroke-width="0.2" />
			<rule e="way" k="*" v="*" zoom-min="14" zoom-max="16">
				<caption k="name" font-style="italic" font-size="10" fill="#333333" stroke="#FFFFFF" stroke-width="0.5" />
			</rule>
		</rule>
		<rule e="way" k="landuse" v="quarry">
			<area fill="#E7E9EB" stroke="#556b2f" stroke-width="0.2" />
			<rule e="way" k="*" v="*" zoom-min="14">
				<area src="file:/patterns/quarry.svg" symbol-width="40" />
			</rule>
		</rule>
		<rule e="way" k="landuse" v="allotments">
			<area fill="#E2ECC5" stroke="#556b2f" stroke-width="0.2" />
		</rule>
	</rule>

	<!-- render park before wood -->
	<rule e="way" k="leisure|landuse" v="park|village_green" zoom-min="11">
		<area fill="#C0DDB9" stroke="#6fc18e" />
	</rule>
	<rule e="way" k="leisure|landuse" v="recreation_ground" zoom-min="11">
		<area fill="#E2ECC5" stroke="#6fc18e" />
	</rule>

	<!-- park captions -->
	<rule e="way" k="leisure|landuse" v="park|village_green|recreation_ground" zoom-min="15">
		<caption k="name" font-style="normal" font-size="10" fill="#333333" stroke="#FFFFFF" stroke-width="1.5" />
	</rule>

	<!-- wood -->
	<rule e="way" k="natural|landuse" v="forest|wood" zoom-min="8">
		<rule e="way" k="*" v="*" zoom-max="13" >
			<area fill="#C9E0B4" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="14">
			<area fill="#C9E0B4" />
			<rule e="any" k="wood|leaf_type" v="coniferous|needleleaved">
				<area src="file:/patterns/wood_coniferous.svg" symbol-width="40" />
			</rule>
			<rule e="any" k="wood|leaf_type" v="deciduous|broadleaved">
				<area src="file:/patterns/wood_deciduous.svg" symbol-width="40" />
			</rule>
			<rule e="any" k="wood|leaf_type" v="~|mixed|leafless">
				<area src="file:/patterns/wood_mixed.svg" symbol-width="40"/>
			</rule>
		</rule>
		
		<!-- wood captions -->
		<rule e="way" k="*" v="*" zoom-min="12" zoom-max="14">
			<caption k="name" font-style="italic" font-size="12" fill="#77856D" stroke="#FFFFFF" stroke-width="1.5" />
		</rule>
	</rule>

		<!-- Obstplantage -->
	<rule e="way" k="landuse" v="orchard">
		<area fill="#ECF3E1" />
		<rule e="way" k="*" v="*" zoom-min="14">
			<area src="file:/patterns/orchard.svg" symbol-width="40" />
		</rule>		
	</rule>

	<!-- military -->
	<rule e="way" k="landuse" v="military" zoom-min="8" closed="yes">
		<area fill="#F0DCD8" />
		<rule e="way" k="*" v="*" zoom-min="14" zoom-max="16">
			<caption k="name" font-style="normal" font-size="10" fill="#F0846E" stroke="#FFFFFF" stroke-width="1.5" />
		</rule>
	</rule>
	
	<rule e="way" k="landuse" v="grass" zoom-min="10" closed="yes">
		<area fill="#DAE5C1" />
	</rule>
	
	<rule e="way" k="landuse" v="vineyard" zoom-min="10" closed="yes">
		<area fill="#EFECF6" />
		<rule e="way" k="*" v="*" zoom-min="14">
			<area src="file:/patterns/vineyard.svg" symbol-width="14" />
		</rule>
	</rule>

	<rule e="way" k="landuse" v="meadow" zoom-min="12" closed="yes">
		<area fill="#EEEFEC" />
	</rule>
	
	<!-- Friedhöfe -->
	<rule e="way" k="landuse" v="cemetery" zoom-min="12" closed="yes">
		<area fill="#CDD9CA" />
		<line stroke="#515151" stroke-width="0.15" stroke-dasharray="15,15" />
		<area src="file:/patterns/cemetery.svg" symbol-width="40"/>
		<symbol id="cemetery" src="file:/symbols/cemetery.svg" symbol-percent="110" />
		<rule e="any" k="*" v="*" zoom-min="15">
			<caption symbol-id="cemetery" k="name" font-style="normal" font-family="sans_serif" font-size="10" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
		</rule>
	</rule>
	
	<!-- amenity -->
	<rule e="way" k="amenity" v="school|college|university">
		<area fill="#EBE3E1" />
	</rule>

</xsl:template>
</xsl:stylesheet>
