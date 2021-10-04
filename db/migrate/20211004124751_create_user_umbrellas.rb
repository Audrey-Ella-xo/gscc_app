class CreateUserUmbrellas < ActiveRecord::Migration[6.0]
  def change
    create_table :user_umbrellas do |t|
      t.references :umbrella_body, null: false, foreign_key: true
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
