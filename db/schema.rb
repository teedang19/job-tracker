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

ActiveRecord::Schema.define(version: 20140719180123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.boolean  "hiring"
    t.string   "cto_name"
    t.string   "cto_email"
    t.string   "cto_twitter"
    t.string   "cto_blog_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
    t.string   "street_two"
    t.string   "city"
    t.string   "state",        limit: 2
    t.string   "zip",          limit: 5
  end

  create_table "company_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.text     "notes"
    t.string   "advocate_name"
    t.string   "advocate_email"
    t.string   "advocate_twitter"
    t.datetime "last_reached_out"
    t.datetime "last_follow_up"
    t.text     "next_step"
    t.text     "interview_notes"
    t.boolean  "offer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
    t.string   "street_two"
    t.string   "city"
    t.string   "state",           limit: 2
    t.string   "zip",             limit: 5
    t.float    "latitude"
    t.float    "longitude"
  end

end
