class CreateUserSocieties < ActiveRecord::Migration[6.0]
  def change
    create_table :user_societies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :society, null: false, foreign_key: true

      t.timestamps
    end
  end
end
