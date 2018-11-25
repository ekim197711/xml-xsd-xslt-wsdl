<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:template match="/spilbutik">
<html>
    <header>
        <title>Spil Butik</title>
    </header>
    <body>
        This is styled xml.<br/>
            <br/>
        <table>
            <tr>
                <xsl:for-each select="spil">
                    <td><xsl:value-of select="navn"/></td>
                    <td><xsl:value-of select="score"/></td>

                </xsl:for-each>
            </tr>
        </table>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>