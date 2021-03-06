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

ActiveRecord::Schema.define(version: 20160612061621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airlines", force: :cascade do |t|
    t.integer  "category"
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "phone",      null: false
    t.string   "email"
    t.integer  "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number",                          null: false
    t.integer  "customer_id"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.integer  "round_type",                default: 1
    t.string   "ori_code"
    t.string   "ori_name"
    t.string   "ori_name_unsigned"
    t.string   "des_code"
    t.string   "des_name"
    t.string   "des_name_unsigned"
    t.integer  "adult",                     default: 1
    t.integer  "child",                     default: 0
    t.integer  "infant",                    default: 0
    t.integer  "status",                    default: 1
    t.string   "depart_airline_name"
    t.string   "depart_airline_short_name"
    t.integer  "depart_airline_type"
    t.string   "depart_flight_code"
    t.date     "depart_date"
    t.time     "depart_from_time"
    t.time     "depart_to_time"
    t.string   "depart_book_code"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "return_airline_name"
    t.string   "return_airline_short_name"
    t.integer  "return_airline_type"
    t.string   "return_flight_code"
    t.date     "return_date"
    t.time     "return_from_time"
    t.time     "return_to_time"
    t.string   "return_book_code"
    t.integer  "depart_web_price_net",      default: 0
    t.integer  "depart_total",              default: 0
    t.integer  "return_web_price_net",      default: 0
    t.integer  "return_total",              default: 0
    t.integer  "total_price",               default: 0
    t.integer  "contact_gender"
    t.text     "contact_note"
    t.text     "admin_note"
    t.integer  "ori_place_id"
    t.integer  "des_place_id"
    t.integer  "depart_airline_id"
    t.integer  "return_airline_id"
    t.string   "ori_short_name"
    t.string   "des_short_name"
    t.datetime "depart_expired"
    t.datetime "return_expired"
    t.datetime "time_expired"
  end

  create_table "passengers", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "no"
    t.string   "name"
    t.integer  "gender"
    t.integer  "category"
    t.date     "birth"
    t.integer  "depart_lug_weight"
    t.integer  "return_lug_weight"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "name_unsigned"
    t.boolean  "is_domestic"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "short_name"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "ori_code"
    t.string   "des_code"
    t.boolean  "is_domestic"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sms_messages", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "type"
    t.string   "content"
    t.string   "to_phone"
    t.integer  "trans_id"
    t.integer  "total_sms"
    t.integer  "total_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "status"
    t.string   "code"
  end

end
