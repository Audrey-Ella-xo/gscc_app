class Society < ApplicationRecord
  belongs_to :user
  has_many :societies
end
