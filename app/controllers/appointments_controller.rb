class AppointmentsController < ApplicationController
	before_action :set_appointment, only: [:show, :update, :destroy]

	def index
	end


	def create
		@appointment = Appointment.new(appointment_params)
		@appointment.save
		AppointmentMailer.pending_appointment(@appointment).deliver
		flash[:notice] = "Your request for a session is pending"
		redirect_to current_member
	end

	def new
		@appointment = Appointment.new
	end

	def show
	end

	def update
		@appointment.confirmed = true
		@appointment.save
		redirect_to current_provider
	end

	def destroy
		@appointment.destroy
		if current_member?
			redirect_to current_member
		else
			redirect_to current_provider
		end

	end
	
	private
	def set_appointment
		@appointment = Appointment.find(params[:id])
	end

	def appointment_params
		params.require(:appointment).permit(:location_id, :provider_id, :member_id, :date, :time)
	end
end
