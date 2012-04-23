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

ActiveRecord::Schema.define(:version => 20120423175957) do

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

  create_table "likes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "tea_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "likes", ["tea_id"], :name => "index_likes_on_tea_id"
  add_index "likes", ["user_id"], :name => "index_likes_on_user_id"

  create_table "liketts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "tea_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "liketts", ["tea_type_id"], :name => "index_liketts_on_tea_type_id"
  add_index "liketts", ["user_id"], :name => "index_liketts_on_user_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "post"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "tea_types", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "image"
    t.text     "repTea"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teas", :force => true do |t|
    t.string   "name"
    t.string   "region"
    t.string   "image_id"
    t.integer  "tea_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "teas", ["tea_type_id"], :name => "index_teas_on_tea_type_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.text     "description"
    t.integer  "tea_id"
    t.integer  "tea_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["tea_id"], :name => "index_users_on_tea_id"
  add_index "users", ["tea_type_id"], :name => "index_users_on_tea_type_id"

end
