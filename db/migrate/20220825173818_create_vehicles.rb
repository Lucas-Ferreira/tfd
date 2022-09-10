class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :modelo
      t.string :placa
      t.string :capacidade
      t.string :ano
      t.string :montadora
      t.string :status

      t.timestamps
    end
  end
end
