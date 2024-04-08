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

ActiveRecord::Schema[7.1].define(version: 2024_04_08_115717) do
  create_table "deliveries", force: :cascade do |t|
    t.string "direction"
    t.string "status"
    t.string "code"
    t.string "description"
    t.string "product_name"
    t.string "delivered_at"
    t.integer "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_deliveries_on_trip_id"
  end

  create_table "roads", force: :cascade do |t|
    t.string "company_name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "driver_name"
    t.string "license_plate"
    t.integer "road_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["road_id"], name: "index_trips_on_road_id"
  end

  add_foreign_key "deliveries", "trips"
  add_foreign_key "trips", "roads"
end
