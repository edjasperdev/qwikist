class AppointmentsController < ApplicationController
	before_action :set_appointment, only: [:show]

	def index
		@appointments = current_user.appointments
	end

	def create
		@appointment = Appointment.new(appointment_params)
		@appointment.save
		redirect_to current_user
	end

	def new
		@appointment = Appointment.new
	end

	private
	def set_appointment
		@appointment = Appointment.find_or_create_by(params[:id])
	end

	def appointment_params
		params.require(:appointment).permit(:time, :date, :user_id, :provider_id)
	end
end
