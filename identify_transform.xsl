<!--  This file is an identity transform, it outputs the input exactly as it sees 
  it. It's here as a starting point for more interesting transformations. -->

<!--  Things that this code changes (such as colapsing CDTATA sections, changing 
  character encoding, etc) are generally outside of the control of an XSL script, 
  but may be in the control of options of the XSL processor. -->

<xsl:stylesheet 
    version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="@*|*|processing-instruction()|comment()">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|text()|processing-instruction()|comment()"/>
    </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>
