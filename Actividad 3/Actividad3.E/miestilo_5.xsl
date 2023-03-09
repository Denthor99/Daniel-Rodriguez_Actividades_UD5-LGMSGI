<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1 align="center">Inventario 5</h1>
        <table border="1" align="center">
            <tr bgcolor="#ECAAA5">
                <th>Registros</th>
            </tr>
            <xsl:for-each select="raiz/registro">
            <xsl:sort select="fecha/@when" order="descending" data-type="text"/>
            <xsl:if test="fecha/anno&gt;1789">
                <tr>
                    <td align="center"><xsl:value-of select="id"/>
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="titulo"/>
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="fecha/@when"/>
                    </td>
                </tr>
            </xsl:if>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
