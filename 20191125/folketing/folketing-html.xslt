<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/folketing">
        <html>
            <body>
                <h1>Parliament</h1>
                <ul>
                    <li><xsl:value-of select="formand/fornavn"/></li>
                    <li><xsl:value-of select="formand/efternavn"/></li>
                    <li><xsl:value-of select="pladser"/></li>
                </ul>
                <h2>Mr. <xsl:value-of select="formand/efternavn"/></h2>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>