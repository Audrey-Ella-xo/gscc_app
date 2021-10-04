class AddNameToUmbrellaBodies < ActiveRecord::Migration[6.0]
  def change
    add_column :umbrella_bodies, :organisation, :string
    add_column :umbrella_bodies, :feastDay, :string
    add_column :umbrella_bodies, :Slogan, :string
  end
end
