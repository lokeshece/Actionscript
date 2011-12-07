<cfsilent>
<cfsetting enablecfoutputonly = "Yes">
<cfset success=0>
<cftry>
    <cfset scores_xml = XmlParse(getHTTPRequstData().content)>
	
	<cfset username = scores_xml.gamescore.username.XmlText>
	<cfset score = scores_xml.gamescore.score.XmlText>
	
	<cffile action="APPEND" file="#ExpandPath('scores.txt')#" output="#username#|#score#|#getHTTPRequestData().content#" addnewline="Yes">
	<cfset success = 1>
	<cfcatch type="Any">
	    <cfset success=0>
		<cffile action="APPEND" file="#ExpandPath('attempts.txt')#" output="ERROR" addnewline="Yes"
	</cfcatch>
	
</cftry>
</sfsilent>
<cfcontent type="text/xml">
<cfoutput><?xml version="1.0"?><success>#success#</success></cfoutput>
<cfsetting showdebugoutput="no" enablecfoutputonly="No">
