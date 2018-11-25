<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:butik="http://mynamespace"
                version="2.0">
    <xsl:template match="/butik:spilbutik">
        <html>
            <header>
                <title>Spil Butik3</title>
            </header>
            <body>
                This is styled xml.<br/><br/>
                Heres the table:<br/>
                <table border="1px;">
                    <tr>
                        <th>Navn</th>
                        <th>Score</th>
                        <th>Beskrivelse</th>
                        <th>Forkortelse</th>
                    </tr>
                    <xsl:for-each select="butik:spil">
                        <tr>
                            <td>
                                <xsl:value-of select="butik:navn"/>
                            </td>
                            <td>
                                <xsl:value-of select="butik:score"/>
                            </td>
                            <td>
                                <xsl:value-of select="butik:beskrivelse"/>
                            </td>
                            <td>
                                <xsl:value-of select="butik:navn/@forkortelse"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>