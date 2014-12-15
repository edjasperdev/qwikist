class AppointmentsController < ApplicationController
	before_action :set_appointment, only: [:show]

	def index
	end

	def create
		@appointment = Appointment.new(appointment_params)
		@appointment.save
		redirect_to current_member
	end

	def new
		@appointment = Appointment.new
	end

	def show
	end
	
	private
	def set_appointment
		@appointment = Appointment.find(params[:id])
	end

	def appointment_params
		params.require(:appointment).permit(:location_id, :provider_id, :member_id, :date, :time)
	end
end
