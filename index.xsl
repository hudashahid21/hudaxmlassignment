<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/HN-Stationary">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
</head>
<body>
    <h1>HN Stationary</h1>
    <table border="1">
        <tr bgcolor="yellow">
            <th>Product Id</th>
            <th>Product-Name</th>
            <th>Quantity</th>
            <th>Price-per-unit</th>
            <th>Price-per-dozen</th>
            <th>stock</th>
        </tr>
        <xsl:for-each select="Products">
            <xsl:if test="stock='Yes'">
            <tr>
<td><xsl:value-of select="Product-Id"></xsl:value-of></td>
<td><xsl:value-of select="Product-Name"></xsl:value-of></td>
<td><xsl:value-of select="Quantity"></xsl:value-of></td>
<td><xsl:value-of select="Price-per-unit"></xsl:value-of></td>
<td><xsl:value-of select="Price-per-dozen"></xsl:value-of></td>
<td><xsl:value-of select="stock"></xsl:value-of></td>
</tr>
</xsl:if>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>