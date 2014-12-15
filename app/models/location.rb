class Location < ActiveRecord::Base
	has_and_belongs_to_many :members, :join_table => :member_locations
	has_and_belongs_to_many :providers, :join_table => :provider_locations
	has_many :appointments
end
