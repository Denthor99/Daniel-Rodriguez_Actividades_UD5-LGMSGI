<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/">
    <html><body>
     <h1>Plantilla Biblioteca</h1>
     <xsl:apply-templates/>
    </body></html>
 </xsl:template>
    <xsl:template match="libreria">
        <h2>Mi biblioteca</h2>
        <table>
            <tr bgcolor="#61E3E9">
                <th>ISBN</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>Num_paginas</th>
            </tr>
            <xsl:apply-templates select="libro"/>
        </table>
    </xsl:template>
    <xsl:template match="libro">
        <tr>
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="precio"/></td>
            <xsl:choose>
                <xsl:when test="numPaginas &gt; 150">
                    <xsl:apply-templates select="numPaginas"/>
                </xsl:when>
                <xsl:otherwise>
                    <td>
                        <xsl:value-of select="numPaginas"/>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
        </tr>
    </xsl:template>
    <xsl:template match="numPaginas">
        <td bgcolor="FF0000"><xsl:value-of select="."/></td>
    </xsl:template>
    
</xsl:stylesheet>