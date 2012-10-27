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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121027181813) do

  create_table "docentes", :force => true do |t|
    t.string   "user"
    t.string   "pass"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "escuelas", :force => true do |t|
    t.string   "institu"
    t.integer  "provi_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "obra"
    t.string   "autor1"
    t.string   "autor2"
    t.string   "autor3"
    t.string   "autor4"
    t.date     "fecha"
    t.string   "file"
    t.text     "codigo"
    t.integer  "escuela_id"
    t.integer  "docente_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "curso"
    t.text     "comentario"
  end

  create_table "provis", :force => true do |t|
    t.string   "prov"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
