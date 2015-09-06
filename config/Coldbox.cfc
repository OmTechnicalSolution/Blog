component
{
	function configure() {

		coldbox = {
			// Application Setup
			appName = "Blog",
			BaseURL = "https://MRKesavan.Blog.com/",
			

			// Development Settings
			reinitPassword			= "1",
			handlersIndexAutoReload = true,

			// Conventions
			eventName = "action",
			eventAction = "index",
			handlersLocation = "handler",
			viewsLocation = "views",
			layoutsLocation = "layouts",
			modelsLocation = "models",
			modulesLocation = "modules",

			// Implicit Events
			defaultEvent			= "main.index",
			requestStartHandler		= "main.OnRequestStart",
			requestEndHandler		= "",
			applicationStartHandler = "",
			applicationEndHandler	= "",
			sessionStartHandler 	= "",
			sessionEndHandler		= "",
			missingTemplateHandler	= "",

			// Extension Points
			applicationHelper = "",
			viewsHelper = "",
			handlersExternalLocation = "handler",

			// Error/Exception Handling
			exceptionHandler		= "",
			onInvalidEvent			= "",
			customErrorTemplate		= "",

			// Application Aspects
			handlerCaching 			= false,
			eventCaching			= false
		}; // coldbox

		// Datasources
		datasources = {
			Blog = { name="myBlog", dbType="", username="", password=""}
		}; // datasources

		// Environments, check CGI.HTTP_HOST for string, $ matches end, ^ matches start
		environments = {
			production = "\.com$",
			development = "\.dev$"
		};

		interceptors = [
			//SES
			{class="coldbox.system.interceptors.SES"}
		];
		// Application-specific Settings
		settings = {
			MyApplicationsVariable = "FooBar",
			AnotherCoolSetting = "Cool"			
		};

	}; // configure()

	// optionally make your own detctor with function detectEnvironment(){}
	function development() {
		colbox.debugpassword = "";
		coldbox.reinitpassword = "1";
		coldbox.eventCaching = false;
		coldbox.handlerCaching = false;
		coldbox.customErrorTemplate = "/coldbox/system/includes/BugReport.cfm";
		wirebox.singletonReload = true;
	} // development

	// configuration interceptor
	function preProcess( event, interceptData, buffer ){
	}

} // component
