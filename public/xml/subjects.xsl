<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output
        method="html"
        encoding="UTF-8"
        indent="yes" />

    <xsl:template match="/notes">
        <section>
            <xsl:apply-templates select="note">
                <xsl:sort select="subject"/>
            </xsl:apply-templates>
        </section>
    </xsl:template>

    <xsl:template match="/notes/note">
        <xsl:variable name="sub"
                      select="subject[not(.=following::subject)]"/>
        <xsl:for-each select="$sub">
            <button class="buttsub">
                <xsl:value-of select="."/>
            </button>
            <br/>
        </xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
