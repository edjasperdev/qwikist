class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  # devise :omniauthable, :omniauth_providers => [:facebook]

  has_many :availabilities
  has_many :appointments
  has_and_belongs_to_many :locations, :join_table => :member_locations
  has_many :providers, :through => :appointments
  has_many :messages

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |member|
      member.provider = auth.provider
      member.uid = auth.uid
      member.name = auth.info.name
      member.email = auth.info.email
      member.oauth_token = auth.credentials.token
      member.oauth_expires_at = Time.at(auth.credentials.expires_at)
      member.save!
    end
  end
end
