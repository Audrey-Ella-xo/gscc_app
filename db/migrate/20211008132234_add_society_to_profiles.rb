class AddSocietyToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_reference :profiles, :society, foreign_key: true

  end
end
