# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_24_231947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "givers", force: :cascade do |t|
    t.string "ss_num"
    t.string "licence_num"
    t.string "street_address"
    t.bigint "taker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["taker_id"], name: "index_givers_on_taker_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "condition"
    t.text "description"
    t.string "avatar"
    t.bigint "giver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["giver_id"], name: "index_items_on_giver_id"
  end

  create_table "saved_items", force: :cascade do |t|
    t.float "total"
    t.bigint "taker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["taker_id"], name: "index_saved_items_on_taker_id"
  end

  create_table "takers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_takers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_takers_on_reset_password_token", unique: true
  end

  add_foreign_key "givers", "takers"
  add_foreign_key "items", "givers"
  add_foreign_key "saved_items", "takers"
end
