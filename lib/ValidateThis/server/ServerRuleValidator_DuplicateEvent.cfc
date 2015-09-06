<cfcomponent output="false" name="ServerRuleValidator_DuplicateEvent" extends="AbstractServerRuleValidator" hint="I am responsible for performing the file Extension Validation.">

	<cffunction name="validate" returntype="any" access="public" output="false" hint="I perform the validation returning info in the validation object.">
		<cfargument name="validation" type="any" required="yes" hint="The validation object created by the business object being validated." />
		<cfargument name="locale" type="string" required="yes" hint="The locale to use to generate the default failure message." />

		<cfset result = application.FacilitatorsDAO.CheckDuplicateEvents(EventID = EventID, FacID = FacID)>

		<cfif shouldTest(arguments.validation) AND NOT result>
			<cfset fail(arguments.validation,"The event is already added. You can add it again only after it expires.") />
		</cfif>

	</cffunction>

</cfcomponent>