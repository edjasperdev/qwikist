class User < ActiveRecord::Base
	has_secure_password
	has_many :appointments_users
	has_many :appointments, :through => :appointments_users
	has_many :locations
	has_many :messages
	validates :email, presence: true,
		uniqueness: true,
	format: {
		with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9\.-]+\.[A-Za-z]+\Z/
	}


end
