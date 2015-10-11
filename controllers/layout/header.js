app.controller('header', function ($scope, $http, $sce) {
	$scope.showModel = 0;
	
	$scope.Login = function(path){
		$http.post('http:'+path).success(function(result){$scope.ModelContent = $sce.trustAsHtml(result);})
			
	}
	$scope.DoLogin = function(){
		$scope.showModel = 1;
	}
})