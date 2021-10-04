class UserSocial < ApplicationRecord
  belongs_to :profile
  belongs_to :social_group
end
