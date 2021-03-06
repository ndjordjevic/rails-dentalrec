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

ActiveRecord::Schema.define(version: 20150802172043) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.string   "symptoms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "patient_id"
    t.integer  "dentist_id"
  end

  add_index "appointments", ["dentist_id"], name: "index_appointments_on_dentist_id"
  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id"

  create_table "dentists", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "manager_id"
    t.integer  "office_id"
  end

  add_index "dentists", ["office_id"], name: "index_dentists_on_office_id"

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.string   "country"
    t.string   "phone"
    t.integer  "dentist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "offices", ["dentist_id"], name: "index_offices_on_dentist_id"

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
