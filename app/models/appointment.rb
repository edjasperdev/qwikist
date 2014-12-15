class Appointment < ActiveRecord::Base
	belongs_to :member
	belongs_to :provider
	has_one :location



end
