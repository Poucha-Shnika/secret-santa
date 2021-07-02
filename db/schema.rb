# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_02_121152) do

  create_table "lists", force: :cascade do |t|
    t.integer "santa_id", null: false
    t.integer "receiver_id", null: false
    t.integer "party_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["party_id"], name: "index_lists_on_party_id"
    t.index ["receiver_id"], name: "index_lists_on_receiver_id"
    t.index ["santa_id"], name: "index_lists_on_santa_id"
  end

  create_table "parties", force: :cascade do |t|
    t.date "date"
    t.string "location"
    t.string "price"
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.boolean "host"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "party_id"
  end

  add_foreign_key "lists", "parties"
  add_foreign_key "lists", "users", column: "receiver_id"
  add_foreign_key "lists", "users", column: "santa_id"
  add_foreign_key "users", "parties"
end
