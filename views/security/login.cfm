<cfoutput>
	<div ng-controller="SecurityLogin">
		<div class="container">
			<div class="col-md-4 col-md-offset-4 form-group">
				<form action="#event.buildLink('security.validlogin')#" method="post" >
					<div class="row col-md-10">
						<h1>Login</h1>
					</div>
					<div class="row">
						<div class="col-md-10">
							<label>User Name</label>
							<input type="text" name="username" maxlength="10" class="form-control"> 
						</div>
					</div>
					<div class="row">
						<div class="col-md-10">
							<label>Password</label>
							<input type="password" name="password" maxlength="15" class="form-control"> 
						</div>
					</div>
					<hr class="row">
					<div class="row col-md-10">
						<button name="SignIn" class="btn btn-success pull-right">Log in</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</cfoutput>