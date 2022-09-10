class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :rua
      t.string :bairro
      t.string :numero
      t.string :cep
      t.string :city
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
