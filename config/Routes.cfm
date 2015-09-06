<cfscript>
	setEnabled(true);
	setUniqueURLS(false);

	if( len(getSetting('AppMapping') ) lte 1){
		setBaseURL("//#cgi.HTTP_HOST#");
	}	else {
		setBaseURL("//#cgi.HTTP_HOST#/#getSetting('AppMapping')#");
	}
  	
  	addRoute(pattern="/login", handler="security", action="login");
  	addRoute(pattern="/validlogin", handler="security", action="validlogin");
	// Your Application Routes
	
</cfscript>