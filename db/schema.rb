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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120318053938) do

  create_table "clothes", :force => true do |t|
    t.string   "name"
    t.text     "image_url"
    t.string   "type"
    t.integer  "price"
    t.date     "create_date"
    t.date     "stop_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.time     "get_time_begin"
    t.time     "get_time_end"
  end

  create_table "clothes_orders", :id => false, :force => true do |t|
    t.integer "order_id"
    t.integer "clothe_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.time     "get_time_begin"
    t.time     "get_time_end"
    t.integer  "user_id"
    t.datetime "get_date"
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.string   "en_name"
    t.integer  "period_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partners_periods", :id => false, :force => true do |t|
    t.integer "partner_id"
    t.integer "period_id"
  end

  create_table "periods", :force => true do |t|
    t.string   "code"
    t.time     "begin_time"
    t.time     "end_time"
    t.string   "partner_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.string   "name"
    t.decimal  "jifen",      :precision => 10, :scale => 0
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "pwd"
    t.string   "role_type"
    t.integer  "partner_id"
  end

  create_table "yis", :force => true do |t|
    t.string   "name"
    t.string   "img_url"
    t.integer  "type"
    t.integer  "price"
    t.date     "create_time"
    t.date     "stop_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
