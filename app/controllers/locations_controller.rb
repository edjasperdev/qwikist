class LocationsController < ApplicationController
	before_action :set_appointment, only: [:show]

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		if member_signed_in?
			@location.members << current_member
			@location.save
  		redirect_to member_path(current_member)
  	elsif provider_signed_in?
  		@location.providers << current_provider
  		@location.save
  		redirect_to provider_path(current_provider)
  	end
	end

	def show
	end

	private
	def location_params
		params.require(:location).permit(:name, :address, :public)
	end
end
