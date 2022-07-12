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

ActiveRecord::Schema.define(version: 2022_07_12_143158) do

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
  end

  create_table "products_promotions", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "promotion_id", null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.boolean "is_combo"
    t.boolean "needs_qualifying_amount"
    t.integer "qualifying_amount"
    t.float "price"
  end

end
