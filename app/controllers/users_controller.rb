class UsersController < ApplicationController
	before_action :set_user, only: [:show]
	
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Welcome to the site"
			session[:user_id] = @user.id
			redirect_to @user
		else
			flash[:notice] = "There was a problem creating your account. Please try again."
			render new
		end
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
