<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/folketing">
        <parliament>
            <chairman>
                <firstname><xsl:value-of select="formand/fornavn"/></firstname>
                <lastname><xsl:value-of select="formand/efternavn"/></lastname>
            </chairman>
            <seats>
                <xsl:value-of select="pladser"/>
            </seats>
            <subjects>
                <xsl:for-each select="emner/emne">
                    <subject><xsl:value-of select="current()"/></subject>
                </xsl:for-each>
            </subjects>
        </parliament>
    </xsl:template>
</xsl:stylesheet>