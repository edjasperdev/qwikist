class MembersController < ApplicationController
	before_action :set_member, only: [:show]
	
	def new
		@member = Member.new
	end


	def show
	end

	private

	def set_member
		@member = Member.find_by(params[:id])
	end

	def member_params
		params.require(:member).permit(:name, :email)
	end

end
