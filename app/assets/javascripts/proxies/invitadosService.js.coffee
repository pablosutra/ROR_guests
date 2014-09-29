@app = angular.module 'invitadosService', []

@app.factory 'invitadosService' , ['$http', '$q', ($http, $q) ->
		getAll: ->
			deferred = $q.defer()
			$http {url: './invitados.json', method: 'GET'}
			.success( (data) ->
					deferred.resolve(data)
					return
			).error( (data, status, header, config) ->
				deferred.reject {
                    data: data,
                    status: status,
                    headers: headers,
                    config: config
                }

			)
			deferred.promise
	] 

