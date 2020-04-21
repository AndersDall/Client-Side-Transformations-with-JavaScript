<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:param name="param1">XSLT</xsl:param>

    <xsl:output
		method="html"
		encoding="UTF-8"
		indent="yes" />

	<xsl:template match="/notes/note">
        <xsl:if test="header = $param1">
			<div id="maincontainer">
                <xsl:apply-templates/>
            </div>
        </xsl:if>
	</xsl:template>

	<xsl:template match="note/header">
		<h2 id="noteheader"><xsl:apply-templates/></h2>
	</xsl:template>

	<xsl:template match="note/date">
		<h2 id="notedate"><xsl:apply-templates/></h2>
	</xsl:template>

	<xsl:template match="note/tags">
		<p><em>Subject tags: </em>
		<xsl:apply-templates/></p>
	</xsl:template>

	<xsl:template match="note/presenter">
		<h3>Lecturer: <xsl:apply-templates/></h3>
	</xsl:template>

	<xsl:template match="note/item">
		<section>
            <header class="item">
                <h1>Item:</h1>
            </header>
                <xsl:apply-templates/>
        </section>
	</xsl:template>

    <xsl:template match="note/item/content">
        <p><xsl:apply-templates/></p>
    </xsl:template>

    <xsl:template match="note/item/tags">
		<p><em>Item tags: </em>
		<xsl:apply-templates/></p>
    </xsl:template>

    <xsl:template match="note/item/tags/tag">
        <xsl:apply-templates/>
    </xsl:template>

	<xsl:template match="note/subject">
		<header><h1><xsl:apply-templates/></h1></header>
	</xsl:template>
</xsl:stylesheet>
