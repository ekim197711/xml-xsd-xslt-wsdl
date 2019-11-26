# Wellformed XML
Rules for wellformed xml:
* XML is case sensitive
* 1 root element must wrap the XML document
* attribute values must be in quotes
 &lt;pris valuta="dkk"&gt;100&lt;/pris&gt;
 * Start tags must have corresponding end tags
 * An element needs to contain both start and end tag of child element.

#XML Schema
## The XSD file
```xml
<xs:schema
        attributeFormDefault="unqualified"
        elementFormDefault="unqualified"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        targetNamespace="http://mynamespace"
        xmlns="http://mynamespace">
    <xs:element name="myelement" type="myelementType"/>
</xs:schema>
```
## The XML file
```xml
<sb:spilbutikken
        xmlns:sb="http://mycoolnamespace.dk"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://mycoolnamespace.dk myschemafile.xsd"
>
...
</sb:spilbutikken>
```

## Create complexTypes in the Schema file (XSD-file)
Each complexType usally contains 
* all - If it is an element with child elements
* sequence - If the element is a list of the same element types
* simpleContent - If the element contains a value and also has attributes

## Attributes
```xml
<complexType name="myelementWithAttributes">
    <simpleContent>
        <extension base="xs:string">
            <attribute name="myattribute1" type="xs:string"/>        
            <attribute name="myattribute2" type="xs:string"/>        
            <attribute name="myattribute3" type="xs:string"/>        
        </extension>    
    </simpleContent>
</complexType>
```

## List (sequence)
```xml
<complexType name="myelementwithlistofsubelements">
    <sequence minOccurs="0" maxOccurs="unbounded">
        <element name="myelement" type="myelementType"/>    
    </sequence>
</complexType>
```
## Restrictions on simpleType
```xml
<simpleType name="myprice">
    <restriction base="decimal">
        <minInclusive value="0"/>
        <maxInclusive value="10000"/>
    </restriction>
</simpleType>
```
# Transformation
XML can be transformed to another XML or to another format like PDF or HTML with a XSLT template.
The template uses XPATH and looks like this (without the spaces):

## XSLT file
```xml
<xs:stylesheet version="2.0" xmlns:xs="http://www.w3.org/1999/XSL/Transform">
<xs:template match="/spilbutik">
...
<xs:for-each select="tilsalg/spil">
...
<xs:value-of select="titel"/>
```

## XML file
```
<?xml version="1.0" encoding="UTF-8" ?>
<?xml-stylesheet type="text/xml" href="fodboldhold.xslt"?>
```
## XPath

/ selects the root

. selects the current node

.. selects the parent node

@ selects an annotation

//nodename selects the node anywhere in the XML document    



