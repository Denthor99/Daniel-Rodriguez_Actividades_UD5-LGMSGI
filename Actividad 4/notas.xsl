<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Convocatorias Alumnos</title>
    </head>
    <body bgcolor="#BB9DF7">
        <h1 align="center">Evaluación del curso 2022/2023</h1>
        <table border="1" align="center">
            <tr bgcolor="#D7C6C6">
                <th colspan="2">Datos</th>
                <th colspan="4">Notas</th>
            </tr>
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Cuestionarios</th>
                <th>tareas</th>
                <th>Examen</th>
                <th>Final</th>
            </tr>
            <xsl:apply-templates select="alumno"/>
        </table>
    </body>
</html>
</xsl:template>
<xsl:template match="alumno">
    <xsl:if test="alumno/@convocatoria=Junio">
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="apellidos"/></td>
        <td><xsl:value-of select="cuestionarios"/></td>
        <td><xsl:value-of select="tareas"/></td>
        <td><xsl:value-of select="examen"/></td>
        <td><xsl:value-of select="final"/></td>
    </xsl:if>
</xsl:template>
</xsl:stylesheet>