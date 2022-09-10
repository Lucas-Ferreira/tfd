class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :cel
      t.string :cpf
      t.string :city
      t.string :acompanhantes
      t.string :destino
      t.references :travel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
