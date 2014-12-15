class ProvidersController < ApplicationController
	before_action :set_provider, only: [:show]

	def show
		# @locations = @provider.locations
	end

	private

	def set_provider
		@provider = Provider.find_by(params[:id])
	end

	def provider_params
		params.require(:provider).permit(:name, :email, :service)
	end
end
