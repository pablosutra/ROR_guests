class InvitadosController < ApplicationController
	respond_to :json

	def index
		invitados = Invitado.all

		respond_with(invitados) do |format|
			format.json { render :json => invitados.as_json }
		end
	end
end
