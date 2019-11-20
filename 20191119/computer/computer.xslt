<?xml version="1.0" encoding="UTF-8" ?>
<ss:stylesheet xmlns:ss="http://www.w3.org/1999/XSL/Transform"
               version="1.0">
    <ss:template match="/computer">
        <pc>
            <name><ss:value-of select="navn"/></name>
            <outputports><ss:value-of select="usbporte"/></outputports>
            <keyboard>ja ja da</keyboard>
            <osList>
                <ss:for-each select="softwareListe/software">
                    <os><ss:value-of select="current()"/></os>
                </ss:for-each>
            </osList>
            <petname><ss:value-of select="navn/@kælenavn"/></petname>
        </pc>
    </ss:template>
</ss:stylesheet>