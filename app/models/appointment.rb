class Appointment < ActiveRecord::Base
	#Allow Appt to have many users, i.e. to sign up for a group class
	has_many :users

end
