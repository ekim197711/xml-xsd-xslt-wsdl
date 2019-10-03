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
        <table border="1">

                <xsl:for-each select="spil">
                    <tr>
                    <td><xsl:value-of select="navn"/></td>
                    <td><xsl:value-of select="score"/></td>
                    </tr>
                </xsl:for-each>

        </table>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>