class CreateLoteingressos < ActiveRecord::Migration
  def change
    create_table :loteingressos do |t|
      t.float :preco
      t.integer :quantidade
      t.references :evento, index: true

      t.timestamps
    end
  end
end
