class Provider < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  # devise :omniauthable, :omniauth_providers => [:facebook]
  has_many :messages
  has_many :availabilities
  has_many :appointments
  has_and_belongs_to_many :locations, :join_table => :provider_locations
  has_many :members, :through => :appointments


  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |provider|
      provider.provider = auth.provider
      provider.uid = auth.uid
      provider.name = auth.info.name
      provider.oauth_token = auth.credentials.token
      provider.oauth_expires_at = Time.at(auth.credentials.expires_at)
      provider.save!
    end
  end
end
