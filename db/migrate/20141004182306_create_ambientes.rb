class CreateAmbientes < ActiveRecord::Migration
  def change
    create_table :ambientes do |t|
      t.string :nome
      t.integer :capacidade
      t.string :endereco
      t.string :complemento
      t.integer :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
