class CreateUmbrellaBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :umbrella_bodies do |t|
      t.string :img
      t.text :aim
      t.string :executives
      t.string :meeting_day
      t.string :parton_saint

      t.timestamps
    end
  end
end
