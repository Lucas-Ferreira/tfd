class CreateRotumVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :rotum_vehicles do |t|
      t.references :rotum, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
