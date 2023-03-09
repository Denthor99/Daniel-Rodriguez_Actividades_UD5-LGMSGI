<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1 align="center">Inventario 4</h1>
        <table border="1" align="center">
            <tr bgcolor="#ECAAA5">
                <th>Texto</th>
            </tr>
            <xsl:for-each select="raiz/registro">
            <xsl:sort select="fecha/@when" order="descending" data-type="text"/>
                <tr>
                    <td><xsl:value-of select="texto"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
