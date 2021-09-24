class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :middlename
      t.string :familyname
      t.string :picture
      t.datetime :birhday
      t.string :gender
      t.string :marriage_status

      t.timestamps
    end
  end
end
