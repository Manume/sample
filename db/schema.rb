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

ActiveRecord::Schema.define(version: 20141207151400) do

  create_table "careers", force: true do |t|
    t.string   "job_title"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.integer  "career_id"
    t.string   "des1"
    t.string   "des2"
    t.string   "des3"
    t.string   "des4"
    t.string   "des5"
    t.string   "des6"
    t.string   "des7"
    t.string   "des8"
    t.string   "skill1"
    t.string   "skill2"
    t.string   "skill3"
    t.string   "skill4"
    t.string   "skill5"
    t.string   "skill6"
    t.string   "skill7"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["career_id"], name: "index_jobs_on_career_id"

  create_table "portfolios", force: true do |t|
    t.string   "name"
    t.string   "type_of_design"
    t.string   "portfolio_image"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", force: true do |t|
    t.string   "full_name"
    t.string   "email_address"
    t.string   "upload_cv"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
