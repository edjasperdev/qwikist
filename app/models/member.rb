class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :availabilities
	has_many :appointments 
	has_many :locations, :through => :member_locations
	has_many :member_locations
	has_many :providers, :through => :appointments
	has_many :messages 
end
