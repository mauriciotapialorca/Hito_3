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

ActiveRecord::Schema[7.0].define(version: 2022_06_02_142549) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "laboratories", force: :cascade do |t|
    t.integer "number_laboratory"
    t.string "address"
    t.string "pharmacy_of_brand"
    t.string "district"
    t.integer "number_region"
    t.string "hour_open"
    t.string "hour_close"
    t.integer "phone"
    t.string "number_medicine_isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laboratory_registers", force: :cascade do |t|
    t.integer "number_laboratory"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.integer "number_medicines"
    t.string "description"
    t.integer "initial_stock"
    t.integer "final_stock"
    t.integer "initial_price"
    t.string "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharmacy_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_pharmacy_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pharmacy_users_on_reset_password_token", unique: true
  end

  create_table "providers", force: :cascade do |t|
    t.integer "number_provider"
    t.string "description"
    t.integer "number_medicines"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
