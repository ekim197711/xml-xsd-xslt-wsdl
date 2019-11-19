<?xml version="1.0" encoding="UTF-8" ?>
<ss:stylesheet xmlns:ss="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <ss:template match="/fodboldhold">
        <spillere>
            <ss:for-each select="spiller">
                <spiller>
                    <navn><ss:value-of select="navn"/></navn>
                    <kælenavn><ss:value-of select="navn/@kælenavn"/></kælenavn>
                </spiller>
            </ss:for-each>
        </spillere>
    </ss:template>
</ss:stylesheet>