# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141010023549) do

  create_table "ambientes", force: true do |t|
    t.string   "nome"
    t.integer  "capacidade"
    t.string   "endereco"
    t.string   "complemento"
    t.integer  "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "cpf"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "cnpj"
    t.string   "nome"
    t.string   "endereco"
    t.string   "complemento"
    t.integer  "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", force: true do |t|
    t.string   "nome"
    t.string   "categoria"
    t.date     "data"
    t.time     "hora"
    t.integer  "empresa_id"
    t.integer  "ambiente_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "eventos", ["ambiente_id"], name: "index_eventos_on_ambiente_id"
  add_index "eventos", ["empresa_id"], name: "index_eventos_on_empresa_id"

end
