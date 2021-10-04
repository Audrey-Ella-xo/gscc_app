class Profile < ApplicationRecord
    belongs_to :user
    has_one :user_umbrella

    before_save :set_uid

    def set_uid
        self.token ||= SecureRandom.uuid.split("-").first
    end 

end
