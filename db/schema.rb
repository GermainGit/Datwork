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

ActiveRecord::Schema.define(version: 20180515141654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string "nom"
  end

  create_table "devoirs", force: :cascade do |t|
    t.bigint "matiere_id"
    t.text "description"
    t.boolean "etat"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "etat_id"
    t.index ["etat_id"], name: "index_devoirs_on_etat_id"
    t.index ["matiere_id"], name: "index_devoirs_on_matiere_id"
    t.index ["user_id"], name: "index_devoirs_on_user_id"
  end

  create_table "etats", force: :cascade do |t|
    t.string "nom"
  end

  create_table "matieres", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "devoir_id"
    t.bigint "color_id"
    t.index ["color_id"], name: "index_matieres_on_color_id"
    t.index ["devoir_id"], name: "index_matieres_on_devoir_id"
    t.index ["user_id"], name: "index_matieres_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "mail"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "devoirs", "etats"
  add_foreign_key "devoirs", "matieres"
  add_foreign_key "devoirs", "users"
  add_foreign_key "matieres", "colors"
  add_foreign_key "matieres", "devoirs"
  add_foreign_key "matieres", "users"
end
