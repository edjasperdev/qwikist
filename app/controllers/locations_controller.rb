class LocationsController < ApplicationController
	before_action :set_appointment, only: [:show]

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		@location.save
		redirect_to current_user
	end

	def show
	end

	private
	def location_params
		params.require(:location).permit(:name, :address, :public, :user_id, :provider_id)
	end
end
