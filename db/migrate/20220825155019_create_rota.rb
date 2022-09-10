class CreateRota < ActiveRecord::Migration[7.0]
  def change
    create_table :rota do |t|
      t.string :origem
      t.string :destino
      t.string :especialidade
      t.string :capacidade
      t.string :hr_partida

      t.timestamps
    end
  end
end
