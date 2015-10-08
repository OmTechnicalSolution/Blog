<cfoutput>
	<div ng-controller="header" ng-init="Login('#event.buildLink('Security.login')#')">
		<a ng-click="DoLogin()">Login</a>
		<div class="modal" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" data-backdrop="true" ng-show="showModel">
			<div class="modal-dialog" role="document" ng-bind-html = "ModelContent"></div>
		</div>
	</div>
</cfoutput>