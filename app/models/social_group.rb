class SocialGroup < ApplicationRecord
  belongs_to :user
  has_many :user_socials
end
