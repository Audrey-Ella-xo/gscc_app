class AddCreatorRefToUmbrellaBodies < ActiveRecord::Migration[6.0]
  def change
    add_reference :umbrella_bodies, :user, foreign_key: true
  end
end
