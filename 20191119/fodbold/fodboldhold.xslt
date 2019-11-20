<?xml version="1.0" encoding="UTF-8" ?>
<ss:stylesheet xmlns:ss="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <ss:template match="/fodboldhold">
        <players>
            <ss:for-each select="spiller">
                <player>
                    <name>
                        <ss:value-of select="navn"/>
                    </name>
                    <petname>
                        <ss:value-of select="navn/@kælenavn"/>
                    </petname>
                </player>
            </ss:for-each>
        </players>
    </ss:template>
</ss:stylesheet>