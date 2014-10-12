class CreateIngressos < ActiveRecord::Migration
  def change
    create_table :ingressos do |t|
      t.integer :cadeira_numerada
      t.string :area
      t.references :cliente, index: true
      t.references :loteingresso, index: true

      t.timestamps
    end
  end
end
