app = angular.module('layoutDirective', [])

app.directive('mainHeader', [ ->
		restrict: 'E', 
		replace: true, 
		scope: false,
		templateUrl: '/directives/mainHeader.html'
	])