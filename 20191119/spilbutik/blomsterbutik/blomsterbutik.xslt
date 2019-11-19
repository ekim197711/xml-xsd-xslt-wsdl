<?xml version="1.0" encoding="UTF-8" ?>
<xs:stylesheet version="2.0" xmlns:xs="http://www.w3.org/1999/XSL/Transform">
    <xs:template match="/blomsterbutik/blomster">
        <html>
            <body style="background:purple;color:white">
                <h1>Blomster</h1>
                <ul>
                    <xs:for-each select="blomst">
                        <li>
                            <xs:value-of select="current()"/>
                        </li>
                    </xs:for-each>
                </ul>
            </body>
        </html>
    </xs:template>
</xs:stylesheet>