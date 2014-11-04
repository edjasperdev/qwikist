class User < ActiveRecord::Base
	has_many :appointments
	has_many :locations
	has_many :messages
end
