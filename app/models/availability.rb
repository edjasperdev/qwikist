class Availability < ActiveRecord::Base
	belongs_to :member
	belongs_to :provider
end
