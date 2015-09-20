app.controller('header', function ($scope, $http) {
	$scope.showModel = 0;
	
	$scope.Login = function(path){
		$http.post('http:'+path).success(function(result){$scope.ModelContent = result;})
			
	}
	$scope.DoLogin = function(){
		$scope.showModel = 1;
	}
})