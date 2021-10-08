class CreateSocieties < ActiveRecord::Migration[6.0]
  def change
    create_table :societies do |t|
      t.string :name
      t.string :meeting_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
