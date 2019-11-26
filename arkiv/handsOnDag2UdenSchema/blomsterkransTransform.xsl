<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        version="1.0">
    <xsl:output method="html" indent="yes" version="5.0"/>
    <xsl:template match="/blomsterkrans">
        <html>
            <header>
                <title>Blomsterkrans</title>
            </header>
            <body>
                <h1>Blomsterkrans - Blomster og insekter</h1>
                <table frame="border" rules="all">
                    <tr>
                        <th>Blomsternavn</th>
                        <th>Duft score</th>
                        <th>Placering</th>
                    </tr>
                <xsl:for-each select="blomst">
                    <xsl:sort select="navn"/>
                        <tr>
                            <td><xsl:value-of select="navn"/></td>
                            <td><xsl:value-of select="duftscore"/></td>
                            <td><xsl:value-of select="placering"/></td>
                            <td>
                                <ul>
                                    <xsl:for-each select="insekt">
                                        <xsl:sort select="art"/>
                                        <li><xsl:value-of select="art"/> - <xsl:value-of select="farve"/> </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                        </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>