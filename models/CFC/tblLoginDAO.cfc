/**
*
* @file  /E/Projects/Blog/models/CFC/tblLoginDAO.cfc
* @author  
* @description
*
*/

component output="false" displayname="tblLoginDAO"  {

	property name="dsn" inject="coldbox:datasources:Blog";

	public function init(){
		return this;
	}

	public any function isValidLogin (
		required string username,
		required string password
	) {
		
		local.MyQry = "
			SELECT
				*
			FROM
				tblLogin 
			WHERE 
				username = :username
				AND passwords = :password
		";

		local.qry = new Query( datasource = dsn.name , sql = Local.MyQry);
		local.qry.addParam( name="UserID", value="#Arguments.UserID#", cfsqltype="cf_sql_integer");

		return local.qry.execute().getResult();
	}
	
	
}