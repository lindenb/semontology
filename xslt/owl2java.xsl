<?xml version="1.0"?>
<xsl:stylesheet
	xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:owl="http://www.w3.org/2002/07/owl#"
	xmlns:oboInOwl="http://www.geneontology.org/formats/oboInOwl#"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
	xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
	xmlns:obo="http://purl.obolibrary.org/obo/"
	version="1.0"
	xmlns:x="http://exslt.org/dates-and-times"
	>
<xsl:output method="text"/>
<xsl:variable name="q">&apos;</xsl:variable>

<xsl:template match="/">
package com.github.lindenb.semontology;
/**
 * Terms from https://github.com/lindenb/semontology
 * A java enum that can be used in your java projects.
 *
 * @author Pierre Lindenbaum PhD @yokofakun
 */
@javax.annotation.Generated(value="xslt",date="<xsl:value-of select="x:date-time()"/>")
public enum Term
{
<xsl:for-each select="//owl:Class[not(owl:deprecated/text() = 'true')]">
<xsl:if test="position()!=1">,
	</xsl:if>
<xsl:value-of select="rdfs:label/text()"/><xsl:text>("</xsl:text><xsl:value-of select="oboInOwl:id/text()"/><xsl:text>")</xsl:text>
</xsl:for-each>;
private final String acn;
Term(final String acn) { this.acn=acn;}

public String getAccession() { return this.acn;}
public static Term findByAccession(final String acn)
	{
	for(final Term t: Term.values()) {
		if( t.getAccession().equals(acn) ) return t;
		}
	return null;
	}
	
public static void main(final String args[])
	{
	for(final Term t: Term.values()) System.out.println(t.name()+"\t"+t.getAccession());
	}
}

</xsl:template>


</xsl:stylesheet>
