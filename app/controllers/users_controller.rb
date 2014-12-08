class UsersController < ApplicationController
	before_action :set_user, only: [:show]
	
	def create
		@user = User.new(user_params)
		@user.save
		redirect_to current_user
	end

	def new
		@user = User.new
	end

	def show
		@locations = current_user.locations
		@appointments = current_user.appointments
	end

	def index
	end

	private

	def set_user
		@user = User.find_by_email(params[:id])
	end

	def user_params
		params.require(:user).permit(:name, :email, :service, :provider, :password, :password_confirmation)
	end


end
