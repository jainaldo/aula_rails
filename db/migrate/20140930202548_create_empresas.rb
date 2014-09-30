class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :cnpj
      t.string :nome
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
