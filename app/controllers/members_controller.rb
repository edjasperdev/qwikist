class MembersController < ApplicationController
	before_action :set_member, only: [:show]
	

	def show
		@locations = current_member.locations
		@my_availabilities = current_member.availabilities
		@availabilities = Availability.all
		@my_appointments = current_member.appointments
	end

	private

	def set_member
		@member = Member.find_by(params[:id])
	end

	def member_params
		params.require(:member).permit(:name, :email)
	end

end
