class AddSocialGroupToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_reference :profiles, :social_group, foreign_key: true

  end
end
