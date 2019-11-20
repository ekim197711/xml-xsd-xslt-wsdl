<?xml version="1.0" encoding="UTF-8" ?>
<xs:stylesheet version="2.0" xmlns:xs="http://www.w3.org/1999/XSL/Transform">
    <xs:template match="/spilbutik">
        <html>
            <body style="background:black;color:white">
                <h1>Spilliste</h1>
                <ul>
                    <xs:for-each select="tilsalg/spil">
                        <li>
                            <xs:value-of select="titel"/>
                        </li>
                    </xs:for-each>
                </ul>
            </body>
        </html>
    </xs:template>
</xs:stylesheet>