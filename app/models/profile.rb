class Profile < ApplicationRecord
    belongs_to :user

    before_save :set_uid

    def set_uid
        self.token ||= SecureRandom.uuid.split("-").first
    end 

    # before_save :set_token

    #   def set_token
    #     self.token ||= rand(100000..999999)
    #   end
end
