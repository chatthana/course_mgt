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

ActiveRecord::Schema.define(version: 20170516035016) do

  create_table "course_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",        limit: 64
    t.text     "description", limit: 65535
    t.integer  "active",      limit: 1
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "course_category_mappers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "course_id"
    t.integer  "category_id"
    t.text     "remarks",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "course_id",          limit: 32
    t.string   "course_name",        limit: 128
    t.text     "course_description", limit: 65535
    t.integer  "max_students"
    t.date     "course_date"
    t.time     "course_start_time"
    t.time     "course_end_time"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "password"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "nickname"
    t.date     "birthdate"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "admin",      limit: 1
    t.string   "gender"
  end

end
