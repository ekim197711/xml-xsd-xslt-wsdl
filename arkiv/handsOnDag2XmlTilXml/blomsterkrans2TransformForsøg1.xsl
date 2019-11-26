<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        version="1.0">
    <xsl:output method="xml" indent="yes" version="1.0"
                media-type="xml"
                encoding="UTF-8"
                omit-xml-declaration="no" />

    <xsl:template match="/blomsterkrans">
        <xsl:element name="insektfarm">
            <xsl:for-each select="blomst">
                <xsl:element name="mitblomsternavn">
                    <xsl:value-of select="navn"></xsl:value-of>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>