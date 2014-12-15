class AvailabilitiesController < ApplicationController
	before_action :set_availability, only: [:show, :edit, :update, :destroy]

	def create
		@availability = Availability.new(availability_params)
		@availability.save
		if member_signed_in?
  		redirect_to member_path(current_member)
  	elsif provider_signed_in?
  		redirect_to provider_path(current_provider)
  	end
	end

	def new
		@availability = Availability.new
		@appointment = Appointment.new
	end

	def show
		@locations = @availability.provider.locations.all.map{|location| location.name} 
	end

	def edit
  end

  def update
    @availability.update(availability_params)
    if member_signed_in?
  		redirect_to member_path(current_member)
  	elsif provider_signed_in?
  		redirect_to provider_path(current_provider)
  	end
  end

  def destroy
    @availability.destroy
    if member_signed_in?
  		redirect_to member_path(current_member)
  	elsif provider_signed_in?
  		redirect_to provider_path(current_provider)
  	end

   end

	private

	def set_availability
		@availability = Availability.find_by(params[:id])
	end

	def availability_params
		params.require(:availability).permit(:time, :date, :provider_id, :user_id)
	end


end
