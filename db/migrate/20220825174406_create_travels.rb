class CreateTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :travels do |t|
      t.string :status
      t.references :rotum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
