controllers = angular.module 'InvitadosCtrl', []

controllers.controller  'InvitadosCtrl' , ['$scope', 'invitadosService', ($scope, invitadosService) ->
	$scope.invitados = []
	$scope.listInvitados = ->
		invitadosService.getAll().then((data) ->
			$scope.invitados = data
			return
		) 
	$scope.listInvitados()
]