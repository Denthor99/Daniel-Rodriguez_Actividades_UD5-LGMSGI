<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Lista de Albumes</h1>
        <table>
            <tr bgcolor="E4C96E">
                <th>Titulo</th>
                <th>Artista</th>
                <th>Discografica</th>
                <th>Año de Publicación</th>
                <th>Canciones</th>

            </tr>
            <xsl:for-each select="albumes/album">
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="artista"/></td>
            <td><xsl:value-of select="sello_disc"/></td>
            <td><xsl:value-of select="anno_publi"/></td>
            </xsl:for-each>
            <xsl:for-each select="albumes/album/cancion">
            <td><xsl:value-of select="."/></td>
            </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>