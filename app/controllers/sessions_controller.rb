class SessionsController < ApplicationController
	def new
	end


	def create
		user = User.find_by_email(params[:email]) || user = Provider.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to provider_path(:id)
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
