<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
        <h1>Lista de CDs</h1>
            <table border="1">
                <tr bgcolor="#D59070">
                    <th>Título Álbum</th>
                    <th>Artista</th>
                    <th>Canciones de menos de 5 Minutos</th>       
                </tr>
                <xsl:for-each select="albumes/album">
                <tr>
                    <td align="center"><xsl:value-of select="titulo"/></td>
                    <td align="center"><xsl:value-of select="artista"/></td>
                    <td align="center">
                        <xsl:for-each select="cancion">
                            <xsl:if test="@duracion &lt; 300" dataType="number">
                                <xsl:value-of select="."/>
                                <br/>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </tr>
                </xsl:for-each>    
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>