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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendar", id: false, force: :cascade do |t|
    t.text "c1"
    t.text "c2"
    t.integer "c3"
    t.integer "c4"
    t.integer "c5"
    t.integer "c6"
    t.text "c7"
    t.text "c8"
  end

  create_table "f_groups", id: false, force: :cascade do |t|
    t.integer "c1"
    t.text "c2"
    t.text "c3"
  end

  create_table "folders", id: false, force: :cascade do |t|
    t.integer "c1"
    t.integer "c2"
    t.text "c3"
    t.text "c4"
  end

  create_table "groups", id: false, force: :cascade do |t|
    t.integer "c1"
    t.text "c2"
    t.text "c3"
  end

  create_table "log", id: false, force: :cascade do |t|
    t.integer "c1"
    t.integer "c2"
    t.integer "c3"
    t.text "c4"
    t.integer "c5"
    t.text "c6"
  end

  create_table "uploads", id: false, force: :cascade do |t|
    t.integer "c1"
    t.integer "c2"
    t.integer "c3"
    t.text "c4"
    t.integer "c5"
    t.integer "c6"
    t.text "c7"
  end

  create_table "users", id: false, force: :cascade do |t|
    t.text "c1"
    t.text "c2"
  end

  create_table "users_sessions", id: false, force: :cascade do |t|
    t.integer "c1"
    t.integer "c2"
    t.text "c3"
  end

end
