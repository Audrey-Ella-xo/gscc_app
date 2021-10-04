class AddUmbrellaBodyToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_reference :profiles, :umbrella_body, foreign_key: true
  end
end
