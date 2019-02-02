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

ActiveRecord::Schema.define(version: 20190202184214) do

  create_table "coffee_profiles", force: :cascade do |t|
    t.string "name"
    t.string "roasters"
    t.integer "mark"
    t.string "description"
    t.string "beans_origin_country"
    t.string "region"
    t.string "farm"
    t.string "treatment_method"
    t.string "variety"
    t.string "cultivation_altitude"
    t.string "arabica"
    t.string "robusta"
    t.string "roast"
    t.string "grain_size"
    t.string "package_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "coffee"
    t.decimal "quantity", precision: 4, scale: 1
    t.string "method"
    t.integer "water_temperature"
    t.decimal "water_amount", precision: 4, scale: 1
    t.string "grind"
    t.string "aroma"
    t.integer "aroma_points"
    t.string "taste"
    t.integer "taste_points"
    t.string "body"
    t.integer "body_points"
    t.string "astringency"
    t.integer "astringency_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "brew_time"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'stirng' for column 'name'

end
