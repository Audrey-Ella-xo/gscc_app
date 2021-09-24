class AddTokenToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :token, :string
  end
end
