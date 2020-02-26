<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="xml"/>

	<xsl:template match="/">
	<rss>
	<channel>
		<xsl:for-each select="rss/channel/item">
			<xsl:variable name="project">
				<xsl:choose>
					<xsl:when test="project/@key='COMDEV' and count(labels/label[text() = 'RocketMQ']) &gt; 0">
						<xsl:value-of select="'ROCKETMQ'"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="project/@key"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:variable name="projectName">
				<xsl:choose>
					<xsl:when test="project/@key='COMDEV' and count(labels/label[text() = 'RocketMQ']) &gt; 0">
						<xsl:value-of select="'RocketMQ'"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="project/text()"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<item>
				<project key="{$project}"><xsl:value-of select="$projectName"/></project>
				<xsl:copy-of select="title"/>
				<xsl:copy-of select="link"/>
				<xsl:copy-of select="summary"/>
				<xsl:copy-of select="description"/>
				<xsl:copy-of select="priority"/>
				<xsl:copy-of select="reporter"/>
			</item>
		</xsl:for-each>
	</channel>
	</rss>
	</xsl:template>
</xsl:stylesheet>
