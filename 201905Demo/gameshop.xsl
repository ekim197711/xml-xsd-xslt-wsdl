<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://gameshop ./gameshop.xsd"
        xmlns:gs="http://gameshop"
        version="2.0">
    <xsl:output method="html" indent="yes" version="5.0"/>
    <xsl:template match="/gs:gameshop">
        <html>
            <header>
                <title>Spil butik</title>
            </header>

            <body>
                <h1>Spil Butik</h1>
                <table frame="border" rules="all">
                    <tr>
                        <th>Name</th>
                        <th>Rating</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="gs:game">
                        <tr>
                            <td><xsl:value-of select="gs:name"/></td>
                            <td><xsl:value-of select="gs:rating"/></td>
                            <td><xsl:value-of select="gs:price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>