class UserSociety < ApplicationRecord
  belongs_to :profile
  belongs_to :society
end
