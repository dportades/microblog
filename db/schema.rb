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

ActiveRecord::Schema.define(version: 20141002170737) do

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.string   "profile_image_url"
    t.string   "profile_url"
    t.boolean  "active_status"
    t.datetime "created_at"
    t.integer  "follower_count"
    t.integer  "following_count"
  end

  create_table "posts", force: true do |t|
    t.integer  "user_id"
    t.string   "blog_post"
    t.string   "blog_media_url"
    t.datetime "blog_post_date"
    t.integer  "blog_post_count"
  end

  create_table "users", force: true do |t|
    t.string "fname"
    t.string "lname"
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "location"
  end

end