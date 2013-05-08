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

ActiveRecord::Schema.define(:version => 20130508010503) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "content_id"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "content_tags", :force => true do |t|
    t.integer  "content_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contents", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "html"
    t.text     "css"
    t.boolean  "deleted"
    t.boolean  "visible"
    t.date     "created_on"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "likes"
    t.integer  "views"
    t.integer  "favorites"
    t.integer  "user_id"
  end

  create_table "favorites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "content_id"
    t.boolean  "deleted"
    t.boolean  "shared_on_fb"
    t.boolean  "shared_on_twitter"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.string   "profile_img_url"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "bio"
    t.string   "twitter_link"
    t.string   "github_link"
    t.string   "dribbble_link"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
