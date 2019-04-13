<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="web-image">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <xsl:attribute name='width'>
        <xsl:value-of select="natural-width"/>
      </xsl:attribute>
      <xsl:attribute name='height'>
        <xsl:value-of select="natural-height"/>
      </xsl:attribute>
      <xsl:attribute name='viewBox'>
        <xsl:text>0</xsl:text>
        <xsl:text> </xsl:text>
        <xsl:text>0</xsl:text>
        <xsl:text> </xsl:text>
        <xsl:value-of select="natural-width"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="natural-height"/>
      </xsl:attribute>

      <rect width="100%" height="100%">
        <xsl:attribute name='fill'>
          <xsl:value-of select="background-color/@rgba"/>
        </xsl:attribute>
      </rect>

      <xsl:for-each select="paths/path">
        <path fill="transparent">
          <xsl:attribute name='stroke'>
            <xsl:value-of select="stroke-round/@rgba"/>
          </xsl:attribute>
          <xsl:attribute name='stroke-width'>
            <xsl:value-of select="stroke-round/@width"/>
          </xsl:attribute>
          <xsl:attribute name='stroke-linecap'>
            <xsl:text>round</xsl:text>
          </xsl:attribute>
          <xsl:attribute name='stroke-linejoin'>
            <xsl:text>round</xsl:text>
          </xsl:attribute>
          <xsl:attribute name='data-start'>
            <xsl:value-of select="start"/>
          </xsl:attribute>
          <xsl:attribute name='data-end'>
            <xsl:value-of select="end"/>
          </xsl:attribute>
          <xsl:attribute name='data-left'>
            <xsl:value-of select="left"/>
          </xsl:attribute>
          <xsl:attribute name='data-right'>
            <xsl:value-of select="right"/>
          </xsl:attribute>
          <xsl:attribute name='data-top'>
            <xsl:value-of select="top"/>
          </xsl:attribute>
          <xsl:attribute name='data-bottom'>
            <xsl:value-of select="bottom"/>
          </xsl:attribute>
          <xsl:attribute name='data-left-top'>
            <xsl:value-of select="left-top"/>
          </xsl:attribute>
          <xsl:attribute name='data-right-bottom'>
            <xsl:value-of select="right-bottom"/>
          </xsl:attribute>
          <xsl:attribute name='data-time'>
            <xsl:value-of select="time"/>
          </xsl:attribute>
          <xsl:attribute name='d'>
            <xsl:value-of select="points"/>
          </xsl:attribute>
        </path>
      </xsl:for-each>
    </svg>
  </xsl:template>
</xsl:stylesheet>
