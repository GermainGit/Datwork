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

ActiveRecord::Schema.define(version: 20180517135959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devoirs", force: :cascade do |t|
    t.bigint "matiere_id"
    t.text "content"
    t.string "etat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matiere_id"], name: "index_devoirs_on_matiere_id"
  end

  create_table "matieres", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "devoirs_id"
    t.bigint "user_id"
    t.index ["devoirs_id"], name: "index_matieres_on_devoirs_id"
    t.index ["user_id"], name: "index_matieres_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.bigint "matieres_id"
    t.bigint "devoirs_id"
    t.index ["devoirs_id"], name: "index_users_on_devoirs_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["matieres_id"], name: "index_users_on_matieres_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "devoirs", "matieres"
  add_foreign_key "matieres", "devoirs", column: "devoirs_id"
  add_foreign_key "matieres", "users"
  add_foreign_key "users", "devoirs", column: "devoirs_id"
  add_foreign_key "users", "matieres", column: "matieres_id"
end
