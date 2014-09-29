@app = angular.module 'invitadosService', []

@app.factory 'invitadosService' , ['$http', '$q', ($http, $q) ->
		getAll: ->
			deferred = $q.defer()
			$http {url: './invitados', method: 'GET'}
			.success( (data) ->
					deferred.resolve(data)
					return
			)
			.error( (data, status, header, config) ->
				deferred.reject {
                    data: data,
                    status: status,
                    headers: header,
                    config: config
                }
			)
			deferred.promise
		createInvitado: (data) ->
			deferred = $q.defer()
			$http { url: './invitados', method: 'POST', data: data}
			.success ( (data) ->
				deferred.resolve(data)
				return
			)
			.error ( (data, status, header, config) ->
				deferred.reject {
					data:data, 
					status: status,
					headers: header, 
					config: config
				}
				return
			)
			deferred.promise
	] 

