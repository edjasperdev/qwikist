class ProvidersController < ApplicationController
	before_action :set_provider, only: [:show]
	
	def create
		@provider = Provider.new(provider_params)
		@provider.save
		redirect_to current_user
	end

	def new
		@provider = Provider.new
	end

	def show
		@locations = current_user.locations
		@appointments = current_user.appointments
	end

	def index
	end

	private

	def set_provider
		@provider = Provider.find_by_email(params[:id])
	end

	def provider_params
		params.require(:provider).permit(:name, :email, :service, :password, :password_confirmation)
	end

end
