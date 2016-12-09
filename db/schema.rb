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

ActiveRecord::Schema.define(version: 20161209194701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "contact_phone"
    t.string   "street"
    t.string   "apartment"
    t.string   "city"
    t.string   "state"
    t.boolean  "is_default"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "total_sale_price_in_cents"
    t.integer  "estimated_bake_time_in_seconds"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "cart_id"
    t.integer  "bake_job_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "cakewalker_id"
    t.string   "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "shipping_street"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_zip"
    t.string   "billing_street"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.string   "full_name"
    t.string   "phone"
    t.string   "email"
    t.integer  "cart_id"
    t.string   "credit_card_number"
    t.date     "cc_expiration"
    t.string   "cc_code"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "unit_price_in_cents"
    t.boolean  "for_sale",                default: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "name"
    t.string   "api_id"
    t.integer  "time_to_bake_in_seconds"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.text     "full_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
