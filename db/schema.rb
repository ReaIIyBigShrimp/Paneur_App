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

ActiveRecord::Schema.define(version: 20171215111354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendar", id: false, force: :cascade do |t|
    t.text "event"
    t.text "description"
    t.integer "starttime"
    t.integer "user_id"
    t.integer "event_id"
    t.integer "cal_id"
    t.text "location"
    t.text "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_groups", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "title"
    t.text "permissions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "folders", id: false, force: :cascade do |t|
    t.integer "folder_id"
    t.integer "master_folder"
    t.text "ha_groups"
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "name"
    t.text "permissions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log", id: false, force: :cascade do |t|
    t.integer "userid"
    t.integer "fileid"
    t.integer "folderid"
    t.text "date"
    t.integer "action"
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uploads", id: false, force: :cascade do |t|
    t.integer "upload_id"
    t.integer "uploaddate"
    t.integer "User"
    t.text "file_type"
    t.integer "folder"
    t.integer "location"
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "username"
    t.text "password"
    t.text "salt"
    t.text "name"
    t.integer "group"
    t.text "email"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_sessions", id: false, force: :cascade do |t|
    t.integer "id"
    t.integer "user_id"
    t.text "hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
