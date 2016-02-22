# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160222094640) do

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "micropost_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customer_products", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "product_id"
    t.string   "serial_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "town"
    t.string   "county"
    t.string   "phone"
    t.string   "email"
    t.string   "lat_lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engineers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "invoice_number"
    t.decimal  "travel_cost"
    t.decimal  "parts_cost"
    t.decimal  "labour_cost"
    t.decimal  "vat"
    t.decimal  "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "job_id"
  end

  create_table "job_parts", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "part_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "reported_fault"
    t.integer  "engineer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "invoice_id"
    t.string   "status"
    t.integer  "customer_product_id"
    t.integer  "report_id"
    t.datetime "travel_start"
    t.datetime "travel_end"
    t.datetime "labour_end"
    t.datetime "labour_start"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "town"
    t.string   "county"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "country"
  end

  create_table "office_administrators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "part_lists", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "part_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "part_number"
    t.string   "description"
    t.decimal  "cost"
    t.integer  "quantity_in_stock"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "job_id"
    t.binary   "photo_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_number"
    t.string   "description"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string   "engineer_report"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "job_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "videos", force: :cascade do |t|
    t.string   "data"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
