class Message < ActiveRecord::Base
	has_many :users
	has_many :providers
end
