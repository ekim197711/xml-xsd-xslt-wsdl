<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xsi:schemaLocation="http://blomst2 blomsterbutik.xsd"
                xmlns:tns="http://blomst2"
>
    <xsl:output method="html" encoding="UTF-8" indent="yes" version="5.0"/>
    <xsl:template match="/tns:blomsterbutik">
        <html>
            <header>
                <title>Blomster hjemmeside</title>
            </header>
            <body>
                <h1>Velkommen til min blomsterbutik</h1>
                <h2>- Her dufter godt</h2>
                <ul>
                    <xsl:for-each select="blomst">
                        <li>Se min blomst taget fra xml:
                            <xsl:value-of select="navn"/></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>