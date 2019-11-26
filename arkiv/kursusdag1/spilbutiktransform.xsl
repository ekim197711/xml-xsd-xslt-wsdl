<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:butik="http://mike/spilbutik"
        version="2.0">
    <xsl:template match="/butik:spilbutik">
        <html>
            <header>
                <title>Spil Butikken - Her er billigt</title>
            </header>

            <body>
                <h1>Velkommen til spilbutikken</h1>
                Her er vores spil:<br/>
                <table border="1px">
                    <xsl:for-each select="butik:spil">
                    <tr>
                        <td><xsl:value-of select="butik:navn"/></td>
                        <td><xsl:value-of select="butik:beskrivelse"/></td>
                        <td><xsl:value-of select="butik:pris"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>