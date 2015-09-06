<cfcomponent output="false" name="ClientRuleScripter_FileExtension" extends="AbstractClientRuleScripter" hint="I am responsible for generating JS code for the file Extension.">

	<cffunction name="getRuleDef" returntype="any" access="private" output="false" hint="I return just the rule definition which is required for the generateAddRule method.">
		<cfargument name="validation" type="any" required="yes" hint="The validation struct that describes the validation." />
		<cfargument name="defaultMessage" type="any" required="false" default="Please upload jpg/jpeg images only">

		<cfreturn  """regex"":""\.(?:jpe?g)$""" />
	</cffunction>
	
	<cffunction name="getMessageDef" returntype="string" access="public" output="false" hint="I generate the JS script required to display the appropriate failure message.">
		<cfargument name="message" type="string" default="#getGeneratedFailureMessage()#"/>
		<cfargument name="valType" type="string" default="#getValType()#"/>
		<cfargument name="locale" type="string" default=""/>
		
		<cfreturn super.getMessageDef(arguments.message,"regex",arguments.locale) />
	</cffunction>

	
</cfcomponent>