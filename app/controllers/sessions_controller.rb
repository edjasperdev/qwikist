class SessionsController < ApplicationController

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to current_user
		else
			flash.now[:error] = "There was a problem authenticating."
			render action: 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Signed out!"
	end


end
