class Provider < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :messages 
	has_many :availabilities
	has_many :appointments
	has_and_belongs_to_many :locations, :join_table => :provider_locations
	has_many :members, :through => :appointments

end
