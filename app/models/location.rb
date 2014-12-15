class Location < ActiveRecord::Base
	has_many :provider_locations
	has_many :member_locations
	has_many :providers, :through => :provider_locations
	has_many :members, :through => :member_locations
	has_many :appointments
end
