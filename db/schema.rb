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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110625154226) do

  create_table "divisions", :force => true do |t|
    t.string   "nombre"
    t.string   "escudo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipos", :force => true do |t|
    t.string   "nombre"
    t.string   "escudo"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jornadas", :force => true do |t|
    t.integer  "numero"
    t.date     "fecha"
    t.integer  "finalizada", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partidos", :force => true do |t|
    t.integer  "jornada_id"
    t.integer  "division_id"
    t.integer  "local"
    t.integer  "visitante"
    t.integer  "resultado"
    t.string   "marcador"
    t.integer  "finalizado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "casilla"
    t.integer  "goleslocal"
    t.integer  "golesvisitante"
  end

end
