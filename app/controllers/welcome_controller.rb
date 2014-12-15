class WelcomeController < ApplicationController
  def index
  	if member_signed_in?
  		redirect_to member_path(current_member)
  	elsif provider_signed_in?
  		redirect_to provider_path(current_provider)
  	end
  		
  end

  def new
  end
end
