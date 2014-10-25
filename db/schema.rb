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

ActiveRecord::Schema.define(version: 20141025051342) do

  create_table "emails", force: true do |t|
    t.string   "emailaddress"
    t.integer  "downloadid"
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", force: true do |t|
    t.text     "name"
    t.integer  "downloadtimes"
    t.text     "des"
    t.text     "software_type"
    t.text     "pic"
    t.string   "mb"
    t.integer  "show"
    t.string   "company"
    t.string   "lang"
    t.string   "addition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
