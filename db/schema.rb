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

ActiveRecord::Schema.define(version: 20130513051909) do

  create_table "elective_days", force: true do |t|
    t.integer  "num"
    t.datetime "time"
    t.integer  "elective_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "electives", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "electivesations", force: true do |t|
    t.integer "user_id"
    t.integer "elective_id"
  end

  create_table "event_reports", force: true do |t|
    t.string   "name"
    t.boolean  "tech_support"
    t.boolean  "hostel"
    t.text     "sinopsis"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventables", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "event_type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.string   "address"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.integer  "specialty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specializables", force: true do |t|
    t.integer  "specialty_id"
    t.integer  "firm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialties", force: true do |t|
    t.integer  "num"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.integer  "group_id"
  end

  create_table "user_types", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "avatar_url"
    t.integer  "user_type_id"
    t.integer  "group_id"
    t.string   "phone"
    t.string   "city"
    t.string   "address"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
