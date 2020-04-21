<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output
        method="html"
        encoding="UTF-8"
        indent="yes" />
	<xsl:param name="param1"></xsl:param>

    <xsl:template match="/notes">
        <h2>
            <xsl:value-of select="$param1"/>
        </h2>
        <section>
            <xsl:apply-templates select="note">
                <xsl:sort select="date"/>
            </xsl:apply-templates>
        </section>
    </xsl:template>

    <xsl:template match="/notes/note">
        <xsl:if test="subject = $param1">
            <button class="butthead">
                <xsl:value-of select="header"/>
            </button>
            <xsl:text> </xsl:text>
            <xsl:value-of select="date"/>
            <br/>
        </xsl:if>
	</xsl:template>
</xsl:stylesheet>
