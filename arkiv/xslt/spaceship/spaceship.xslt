<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        version="1.0" xmlns:ss="http://spaceship">
    <xsl:template match="/ss:spaceship">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="spaceship.css"/>
            </head>
            <body>
                <h1>Cargo from spaceship</h1>
                <div class="container">
                    <div class="item">Cargo</div>
                    <div class="item">Amount</div>
                    <xsl:for-each select="ss:cargospace/ss:cargo">
                        <div class="item">
                            <xsl:value-of select="current()"></xsl:value-of>
                        </div>
                        <div class="item">
                            <xsl:value-of select="current()/@amount"></xsl:value-of>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>