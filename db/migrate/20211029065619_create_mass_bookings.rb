class CreateMassBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :mass_bookings do |t|
      t.string :booking_type
      t.string :location
      t.string :purpose
      t.datetime :duration
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
