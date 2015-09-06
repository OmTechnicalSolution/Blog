<cfcomponent output="false" name="ServerRuleValidator_TimeZoneValidation" extends="AbstractServerRuleValidator" hint="I am responsible for performing the file Extension Validation.">
	
	<cffunction name="validate" returntype="any" access="public" output="false" hint="I perform the validation returning info in the validation object.">
		<cfargument name="validation" type="any" required="yes" hint="The validation object created by the business object being validated." />
		<cfargument name="locale" type="string" required="yes" hint="The locale to use to generate the default failure message." />
		<!--- <cfset fail(arguments.StartDate,arguments.StartDate) /> --->
		<cfif isDefined("form.EndTime")>
			<cfset form.EndDate = createDateTime(year(form.StartDate), month(form.StartDate), day(form.StartDate), hour(form.EndTime),minute(form.EndTime),00)>
		</cfif>
		<cfset TimeZoneInfo = application.EventitemsDao.GetLatLang(form.EventLocationID)>
		<cfset timeZone = application.EventitemsDao.getTimeZone(startDate = form.startDate, endDate = form.endDate,lat = TimeZoneInfo.locationLat,lng=TimeZoneInfo.locationLng)>
		<cfif arguments.validation.hasParameter("StartDate") AND isDate(StartDate)>
			<cfif DateCompare(DateAdd('s',timeZone.StartUTCOffsets+GetTimeZoneInfo().UTCTotalOffset,now()), form.StartDate) EQ 1>
				<cfset fail(arguments.validation,"Select upcoming time for the selected location") />
			</cfif>
		</cfif>
		<cfif arguments.validation.hasParameter("EndDate") AND isDate(EndDate)>
			<cfif DateCompare(DateAdd('s',timeZone.EndUTCOffsets+GetTimeZoneInfo().UTCTotalOffset,now()), form.EndDate) EQ 1>
				<cfset fail(arguments.validation,"Select upcoming time for the selected location") />
			</cfif>
		</cfif>
		
	</cffunction>

</cfcomponent>