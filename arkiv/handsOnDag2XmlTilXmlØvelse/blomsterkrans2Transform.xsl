<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        version="1.0">
    <xsl:output method="xml" indent="yes" version="1.0"
                media-type="xml"
                encoding="UTF-8"
                omit-xml-declaration="no" />
    <xsl:template match="/blomsterkrans">
        <xsl:element name="kriblekrablesamling">
            <xsl:element name="insektdyr">
                <xsl:for-each select="//insekt">
                    <xsl:sort select="art" order="descending"/>
                    <xsl:element name="mitinsekt">
                        <xsl:value-of select="art"/>
                        er skrevet på
                        <xsl:value-of select="art/@sprog"/>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>