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

ActiveRecord::Schema.define(:version => 20120416151153) do

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.text     "cmt"
    t.integer  "tea_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["tea_id"], :name => "index_comments_on_tea_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "tea_types", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.text     "repTea"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teas", :force => true do |t|
    t.string   "name"
    t.string   "region"
    t.integer  "likes"
    t.integer  "teaType_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "teas", ["teaType_id"], :name => "index_teas_on_teaType_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.text     "description"
    t.integer  "tea_id"
    t.integer  "teaType_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["teaType_id"], :name => "index_users_on_teaType_id"
  add_index "users", ["tea_id"], :name => "index_users_on_tea_id"

end
