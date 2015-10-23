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

ActiveRecord::Schema.define(version: 20151017143200) do

  create_table "concursos", force: true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.decimal  "preco_minimo"
    t.decimal  "preco_maximo"
    t.datetime "data_inicio"
    t.datetime "data_expiracao"
    t.integer  "ID_Usuario"
    t.integer  "ID_Tipo_de_Concurso"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "estrutura_proposta"
    t.text     "sumario_executivo"
    t.text     "modelo_fornecimento_servico"
    t.text     "planeamento"
    t.text     "equipa_trabalho"
    t.text     "custos"
    t.integer  "validade_propostas"
  end

  create_table "curriculos", force: true do |t|
    t.string   "nome"
    t.text     "morada"
    t.string   "telefone"
    t.string   "email"
    t.string   "documento_identificacao"
    t.string   "N_documento_identificacao"
    t.string   "habilitacoes_literarias"
    t.string   "Experiencia_Profissional"
    t.string   "Linguas"
    t.integer  "ID_Usuario"
    t.integer  "ID_Concurso"
    t.integer  "ID_Estado_curriculo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curriculos_empregos", force: true do |t|
    t.integer  "id_emprego"
    t.integer  "id_curriculo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empregos", force: true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.datetime "data_inicio"
    t.datetime "data_expiracao"
    t.integer  "ID_Usuario"
    t.integer  "ID_Tipo_de_Emprego"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "experiencia_minima"
    t.decimal  "salario"
  end

  create_table "estado_do_curriculos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estado_proposta", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcao_concursos", force: true do |t|
    t.integer  "id_funcao"
    t.integer  "id_concurso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcao_empregos", force: true do |t|
    t.integer  "id_funcao"
    t.integer  "id_emprego"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcao_usuarios", force: true do |t|
    t.integer  "id_funcao"
    t.integer  "id_usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcaos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industria", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industria_concursos", force: true do |t|
    t.integer  "id_industria"
    t.integer  "id_concurso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industria_empregos", force: true do |t|
    t.integer  "id_industria"
    t.integer  "id_emprego"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industria_usuarios", force: true do |t|
    t.integer  "id_industria"
    t.integer  "id_usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "proposta", force: true do |t|
    t.string   "descricao"
    t.decimal  "preco"
    t.integer  "ID_Usuario"
    t.integer  "ID_Concurso"
    t.integer  "ID_Estado_Proposta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provincia", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provincia_concursos", force: true do |t|
    t.integer  "id_provincia"
    t.integer  "id_concurso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provincia_empregos", force: true do |t|
    t.integer  "id_provincia"
    t.integer  "id_emprego"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_concursos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_de_concursos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_de_usuarios", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_usuarios", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nome"
    t.text     "morada"
    t.string   "telefone"
    t.integer  "ID_Tipo_de_Usuario"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "ID_Provincia"
    t.string   "bairro"
    t.string   "nome_responsavel"
    t.string   "funcao_responsavel"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
