class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :categoria
      t.date :data
      t.time :hora
      t.references :empresa, index: true
      t.references :ambiente, index: true
      t.text :descricao

      t.timestamps
    end
  end
end
