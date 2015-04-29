<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>RSS Feeds</h2>
      <xsl:for-each select="documentcollection/document">
 <xsl:element name="h2">
<xsl:element name="a">
    <xsl:attribute name="href">
        <xsl:value-of select="location/rss/channel/link"/>
    </xsl:attribute>
    <xsl:value-of select="location/rss/channel/title"/>
</xsl:element>
</xsl:element>

<xsl:for-each select="location/rss/channel/item">

<xsl:if test="contains(title, 'war') or contains(title, 'peace') or contains(description, 'war') or contains(description, 'peace')">
<xsl:element name="a">
    <xsl:attribute name="href">
        <xsl:value-of select="link"/>
    </xsl:attribute>
    <xsl:value-of select="title"/>
</xsl:element>
<xsl:element name="br"/>
<xsl:value-of select="description"/>
</xsl:if>
</xsl:for-each>

      </xsl:for-each>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
