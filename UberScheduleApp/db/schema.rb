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

ActiveRecord::Schema.define(version: 20150301203431) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "username",        limit: 25
    t.string   "hashed_password", limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "courses", force: :cascade do |t|
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.string   "course_code", limit: 15,  default: "course code"
    t.string   "name",        limit: 255, default: "course name"
    t.float    "credits",     limit: 24,  default: 3.0
    t.string   "description", limit: 255, default: "course description"
  end

  create_table "login_users", force: :cascade do |t|
    t.string   "userName",   limit: 25
    t.string   "password",   limit: 25
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
