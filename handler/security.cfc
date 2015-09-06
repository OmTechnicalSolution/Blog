/**
*
* @file  
* @author  
* @description
*
*/

component output="false" displayname="Security"  {

	public function init(){
		return this;
	}

	public any function validlogin(event, rc, prc) {
		writeDump(rc);
		if(structKeyExists(rc, "username")){
			writeDump(rc);
			writedump(Application.LoginService.isValidLogin(rc.username,rc.password));
		}
		
	}

	public any function login(param) {
		
		// writeDump(cgi);
	}
	
	
	
	
}