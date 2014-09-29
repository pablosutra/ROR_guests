class InvitadosController < ApplicationController
	respond_to :json

	def index
		invitados = Invitado.all
		respond_with(invitados) do |format|
			format.json { render :json => invitados.as_json }
		end
	end

	def create
		new_invitado = Invitado.new(invitado_params)
		if new_invitado.valid?
			new_invitado.save!
		else
			render "public/442", status => 442
		end

		respond_with(new_invitado) do |format|
			format.json {render :json => new_invitado.as_json}
		end
	end

	def invitado_params
      params.permit(:nombreInvitado, :apodo)
	end
end
