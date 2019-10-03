<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
xmlns:bt="http://blomst"
>
    <xsl:template match="/bt:blomsterkrans">
        <html>
            <body>
                <h1>Her er mine blomster</h1>
                <table>
                    <tr>
                        <th>Navn</th>
                        <th>Farve</th>
                        <th>Duft</th>
                    </tr>

                    <xsl:for-each select="blomst">
                        <tr>
                            <td><xsl:value-of select="navn"/></td>
                            <td><xsl:value-of select="farve"/></td>
                            <td><xsl:value-of select="duft"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>