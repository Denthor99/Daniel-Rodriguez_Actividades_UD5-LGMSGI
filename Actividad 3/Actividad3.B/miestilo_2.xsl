<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1 align="center">Inventario 2</h1>
        <table border="1">
            <tr bgcolor="#ECAAA5">
                <th>Identificador</th>
                <th>Texto</th>
            </tr>
            <xsl:for-each select="raiz/registro">
                <tr>
                    <td align="center"><xsl:text>[</xsl:text><xsl:value-of select="id"/><xsl:text>]</xsl:text></td>
                    <td><xsl:value-of select="texto"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
