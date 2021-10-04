class CreateUserSocials < ActiveRecord::Migration[6.0]
  def change
    create_table :user_socials do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :social_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
