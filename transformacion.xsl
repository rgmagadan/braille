<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
<title>XSL</title>
</head>
<body>
<xsl:apply-templates select="alfabeto"/>
</body>
</html>
</xsl:template>

<xsl:template match="alfabeto">
<h1>Alfabeto braille</h1>
<table>
<tr>
<th>Letra</th>
<th>Puntos</th>
</tr>
<xsl:apply-templates select="letra"/>
</table>
</xsl:template>

<xsl:template match="letra">
<tr>
<td><xsl:value-of select="."/></td>
<td><xsl:value-of select="@puntos"/></td>
</tr>
</xsl:template>



</xsl:stylesheet>
