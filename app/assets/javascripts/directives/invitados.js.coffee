app = angular.module 'invitadosDirective', []

app.directive 'tablaInvitados', ['$modal', ($modal) ->
	restrict: 'E',
	replace: true,
	templateUrl: 'directives/tablaInvitados.html',
	link: (scope, elem, attrs) ->
		scope.invitados = scope.listInvitados()
		scope.modalCreateInvitado  = ->
			modal = $modal.open {
				templateUrl : 'pages/modals/formInvitados.html',
				controller: addInvitadoCtrl,
				resolve: {
					invitado: ->
						{}
					headingText: ->
						'Invitando a: '
				}
			}
			modal.result.then (invitado) ->
				scope.saveInvitado(true, invitado)
				return
		scope.cleanFilter = ->
			scope.filtro = {}
			return
		return
]