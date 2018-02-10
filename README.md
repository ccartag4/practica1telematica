# README


# PRACTICA 1 TOPICOS ESPECIALES EN TELEMATICA

BY: Craig David Cartagena - ccartag4@eafit.edu.co

Este proyecto es la entrega 1 de la materia topicos especiales de ingenieria de software de la universidad de EAFIT, donde se plantea una aplicacion web que localize mi posicion actual y me muestre mi posicion cada 5 segundos.

# 1. Analisis

#1.1 Requisitos funcionales:

1. Crear usuario
2. Obtener localizacion actual
3. Detener localizacion actual
4. Borrar localizacion actual

# Installation

# proyecto local

se debe crear el directorio de trabajo con cd mkdir. en este caso practica1telematica

instalacion ruby: $ sudo apt-get install ruby-full

creacion de un entorno de trabajo de ruby on rails: rails new <nombreaplicacion> -T -B

instalacion bootstrap: rails g bootstrap:install

Modelo User y Location schema:

ActiveRecord::Schema.define(version: 20180129235329) do

  create_table "locations", force: :cascade do |t|
    t.string "longitude"
    t.string "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "mail"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

ejecutar programa local: rails s




This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# practica1telematica
