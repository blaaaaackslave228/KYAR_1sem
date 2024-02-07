<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
        <html>
        <body>
        <h2>5 Элемент</h2>
        <table border="1">
        <tr bgcolor="green">
        <th>Наименование</th>
        <th>Цена</th>
        </tr>
        <xsl:for-each select="products/product">
        <xsl:sort select="price" order="ascending" data-type="namber"/>
        <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/></td>
        </tr>
        </xsl:for-each>
        </table>
        </body>
        </html>
        </xsl:template>
</xsl:stylesheet>