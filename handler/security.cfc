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

	public function validlogin(rc, prc) {
		return Application.LoginService.isValidLogin(rc.username,rc.password);
	}

	public function login(event, rc, prc) {
		Event.SetLayout('Blank');
		if(structKeyExists(rc, "username")){
			IsVaild = validlogin(rc, prc);
			if(IsVaild.RecordCount){
				writeDump(IsVaild);
			}
		}

	}
	
	
	
	
}