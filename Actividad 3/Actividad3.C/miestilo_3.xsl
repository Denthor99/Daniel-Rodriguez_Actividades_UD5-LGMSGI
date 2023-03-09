<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1 align="center">Inventario 3</h1>
        <table border="1" align="center">
            <tr bgcolor="#ECAAA5">
                <th>Titulo</th>
                <th>Fecha</th>
            </tr>
            <xsl:for-each select="raiz/registro">
                <tr>
                    <xsl:choose>
                        <xsl:when test="titular!=''">
                            <td><xsl:value-of select="titulo"/><xsl:text> - </xsl:text><xsl:value-of select="titular"/></td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td><xsl:value-of select="titulo"/></td>
                        </xsl:otherwise>    
                    </xsl:choose>
                    <td align="center"><xsl:value-of select="fecha/@when"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
