class ProviderLocation < ActiveRecord::Base
	belongs_to :provider
	belongs_to :location
end
