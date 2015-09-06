<cfcomponent output="false" name="ServerRuleValidator_FileExtension" extends="AbstractServerRuleValidator" hint="I am responsible for performing the file Extension Validation.">
	
	<cffunction name="validate" returntype="any" access="public" output="false" hint="I perform the validation returning info in the validation object.">
		<cfargument name="validation" type="any" required="yes" hint="The validation object created by the business object being validated." />
		<cfargument name="locale" type="string" required="yes" hint="The locale to use to generate the default failure message." />
		
		<cfset isJpegFile = false>
		<cfif arguments.validation.hasParameter("formfield") AND len(profilepic)>
			<cfset thevalue = arguments.validation.getParameterValue("formfield")>
			<cffile action="upload" destination="#expandpath('.')#" filefield="#thevalue#" result="filename" nameconflict="overwrite" >
			<cfset FileExt = filename.clientfileext>
			<cfif FileExt EQ 'jpg' OR FileExt EQ 'jpeg'>
				<cfset isJpegFile = true>
			</cfif>
			<cffile action="delete" file="#expandpath('.')#/#filename.clientfile#" >
		</cfif>
		
		<cfif shouldTest(arguments.validation) AND NOT isJpegFile>
			<cfset fail(arguments.validation,"Please Upload only jpg/jpeg images") />
		</cfif>
		
	</cffunction>

</cfcomponent>