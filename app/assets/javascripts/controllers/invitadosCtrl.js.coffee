controllers = angular.module 'InvitadosCtrl', []

controllers.controller  'InvitadosCtrl' , ['$scope', 'invitadosService', ($scope, invitadosService) ->
	$scope.invitados = []
	$scope.listInvitados = ->
		invitadosService.getAll().then((data) ->
			$scope.invitados = data
			return
		) 
	$scope.saveInvitado = (isNew, data) ->
		invitadoInfo = data
		if isNew
			invitadosService.createInvitado(data).then (response) ->
				$scope.invitados.push(invitadoInfo)
		else
			console.log('Edit Function')
]