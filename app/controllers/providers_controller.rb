class ProvidersController < ApplicationController
	before_action :set_provider, only: [:show]

	def show
		@locations = current_provider.locations
		@availabilities = current_provider.availabilities
	end

	private

	def set_provider
		@provider = Provider.find_by(params[:id])
	end

	def provider_params
		params.require(:provider).permit(:name, :email, :service)
	end
end
