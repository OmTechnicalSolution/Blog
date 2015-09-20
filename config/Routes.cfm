<cfscript>
	setEnabled(true);
	setUniqueURLS(false);

	if( len(getSetting('AppMapping') ) lte 1){
		setBaseURL("//#cgi.HTTP_HOST#");
	}	else {
		setBaseURL("//#cgi.HTTP_HOST#/#getSetting('AppMapping')#");
	}
  	
  	addRoute(pattern="Security/validlogin", handler="Security", action="validlogin");
  	addRoute(pattern="Main/index", handler="Main", action="index");
  	addRoute(pattern="Security/login", handler="Security", action="login");
  	
	// Your Application Routes
	
	addRoute(":handler/:action/:id");
	addRoute(":handler/:action");
	addRoute(":handler");
</cfscript>