class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
  end

  has_one :profile, dependent: :destroy
  has_many :social_groups
  has_many :societies
  has_many :umbrella_bodies
  after_create :init_profile

  def init_profile
    self.create_profile!
  end

  private

  # Validates the size of an uploaded picture.
  # def picture_size
  #   errors.add(:picture, 'should be less than 5MB') if picture.size > 5.megabytes
  # end
end
