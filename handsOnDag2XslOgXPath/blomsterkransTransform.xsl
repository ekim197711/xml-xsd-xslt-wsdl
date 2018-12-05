<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://minblomsterkrans ./blomsterkrans.xsd"
        xmlns:bb="http://minblomsterkrans"
        exclude-result-prefixes="bb"
        version="2.0">
    <xsl:output method="html" indent="yes" version="5.0"/>
    <xsl:template match="/bb:blomsterkrans">
        <html>
            <header>
                <title>Blomsterkrans</title>
            </header>
            <body>

                <table frame="border" rules="all">
                    <tr>
                        <th>Blomsternavn</th>
                        <th>Duft score</th>
                        <th>Placering</th>
                    </tr>
                <xsl:for-each select="bb:blomst">
                        <tr>
                            <td><xsl:value-of select="bb:navn"/></td>
                            <td><xsl:value-of select="bb:duftscore"/></td>
                            <td><xsl:value-of select="bb:placering"/></td>
                        </tr>

                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>