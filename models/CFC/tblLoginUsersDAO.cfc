/**
*
* @file  /E/Projects/Blog/models/CFC/tblLoginDAO.cfc
* @author  
* @description
*
*/

component output="false" displayname="tblLoginUsersDAO"  {

	property name="dsn" inject="coldbox:datasources:Blog";

	public function init(){
		dsn.name = "MyBlog";
		return dsn;
	}

	public function isValidLogin (
		required string username,
		required string password
	) {
		
		local.MyQry = "
			SELECT
				*
			FROM
				tblloginusers 
			WHERE 
				username = :username
				AND UserPassword = :password
				AND Active = 1
		";

		local.qry = new Query( datasource = "MyBlog" , sql = Local.MyQry);
		local.qry.addParam( name="username", value="#Arguments.username#", cfsqltype="cf_sql_varchar");
		local.qry.addParam( name="password", value="#Arguments.password#", cfsqltype="cf_sql_varchar");

		return local.qry.execute().getResult();
	}
	
	
}