<cfoutput>
	<form action="#event.buildLink('Security.login')#" method="post">
		<div class="modal-content">
		  	<div class="modal-header">
		    	<button type="button" class="close" data-dismiss="modal" aria-label="Close" ng-model="">
		      		<span aria-hidden="true">&times;</span>
		      		<span class="sr-only">Close</span>
		    	</button>
		    	<h4 class="modal-title" id="myModalLabel">Login</h4>
		  	</div>
		  	<div class="modal-body">
		    	<div class="row">
					<div class="col-md-10">
						<label>User Name</label>
						<input type="text" name="username" maxlength="10" class="form-control" ng-model=""> 
					</div>
				</div>
				<div class="row">
					<div class="col-md-10">
						<label>Password</label>
						<input type="password" name="password" maxlength="15" class="form-control" ng-model=""> 
					</div>
				</div>
		  	</div>
		  	<div class="modal-footer">
		    	<button name="SignIn" class="btn btn-success pull-right">Log in</button>
		  	</div>
		</div>
	</form>
</cfoutput>
