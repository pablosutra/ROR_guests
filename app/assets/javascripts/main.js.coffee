app = angular.module 'invitados', ['ngRoute', 'ui.bootstrap', 'invitadosService', 'InvitadosCtrl', 'layoutDirective', 'invitadosDirective']

app.config ['$routeProvider', ($routeProvider) ->
		$routeProvider.when('/',{
			   templateUrl: './pages/listaInvitados.html',
			   controller: 'InvitadosCtrl'
			})
]
app.config ['$httpProvider', (provider) ->
	provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]