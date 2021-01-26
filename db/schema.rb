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

ActiveRecord::Schema.define(version: 2021_01_22_083042) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "keywords"
    t.string "desc"
    t.string "suit"
  end

  create_table "cards_readings", force: :cascade do |t|
    t.integer "num"
    t.boolean "upright", default: true
    t.integer "card_id", null: false
    t.integer "reading_id", null: false
    t.index ["card_id"], name: "index_cards_readings_on_card_id"
    t.index ["reading_id"], name: "index_cards_readings_on_reading_id"
  end

  create_table "readings", force: :cascade do |t|
    t.string "desc"
    t.integer "user_id", null: false
    t.integer "card_id", null: false
    t.index ["card_id"], name: "index_readings_on_card_id"
    t.index ["user_id"], name: "index_readings_on_user_id"
  end

  create_table "spreads", force: :cascade do |t|
    t.string "title"
    t.string "desc"
    t.integer "num_of_cards"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "uid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cards_readings", "cards"
  add_foreign_key "cards_readings", "readings"
  add_foreign_key "readings", "cards"
  add_foreign_key "readings", "users"
end
