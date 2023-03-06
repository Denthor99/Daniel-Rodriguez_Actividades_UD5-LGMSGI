<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
        <h1>Lista de CDs</h1>
            <table border="1">
                <tr bgcolor="##D59070">
                    <th>Título Álbum</th>
                    <th>Artista</th>
                    <th>Canciones</th>
                    <th>Sello Discográfico</th>
                    <th>Año</th>        
                </tr>
                <xsl:for-each select="albumes/album">
                <tr>
                    <td align="center"><xsl:value-of select="titulo"/></td>
                    <td align="center"><xsl:value-of select="artista"/></td>
                    <td align="center">
                        <xsl:for-each select="cancion">
                            <xsl:if test="@duracion &lt; 03:00" dataType="time">
                                <xsl:value-of select="."/>
                                <br/>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                    <td align="center"><xsl:value-of select="sello_disc"/></td>
                    <td align="center"><xsl:value-of select="anio_publi"/></td>
                </tr>
                </xsl:for-each>    
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>