<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
        <h1>Lista de CDs</h1>
            <table border="1">
                <tr bgcolor="#D59070">
                    <th>Sello Discografico</th>
                    <th>Canciones</th>
                    <th>Duración</th>
                </tr>
                <xsl:for-each select="albumes/album">
                    <xsl:if test="sello_disc='Virgin'">
                        <tr>
                            <td align="center"><xsl:value-of select="sello_disc"/></td>
                            <td align="center">
                                <xsl:for-each select="cancion">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                            <td align="center">
                                <xsl:for-each select="cancion/@duracion">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>    
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>