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

ActiveRecord::Schema.define(version: 2019_06_27_140225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.datetime "activity_date"
    t.text "content"
    t.bigint "activity_type_id"
    t.datetime "time_started"
    t.datetime "time_ended"
    t.integer "duration"
    t.string "excuse"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_type_id"], name: "index_activities_on_activity_type_id"
  end

  create_table "activity_types", force: :cascade do |t|
    t.integer "activity_type"
    t.string "reason_started"
    t.string "days"
    t.integer "frequency"
    t.datetime "pause_start"
    t.datetime "pause_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "automated_tasks", force: :cascade do |t|
    t.string "task_name"
    t.integer "task_type"
    t.datetime "scheduled_date"
    t.integer "status"
    t.integer "frequency"
    t.integer "attempts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "digital_lock_folders", force: :cascade do |t|
    t.string "folder_name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "digital_lockers", force: :cascade do |t|
    t.string "file_name"
    t.string "document_type"
    t.bigint "digital_locker_folder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["digital_locker_folder_id"], name: "index_digital_lockers_on_digital_locker_folder_id"
  end

  create_table "financials", force: :cascade do |t|
    t.string "header"
    t.text "content"
    t.datetime "transaction_date"
    t.integer "tag"
    t.integer "finance_type"
    t.integer "status"
    t.integer "annual_growth_perventage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string "heading"
    t.text "plan"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "number_of_milestones"
    t.integer "tag"
    t.integer "status"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.string "detailed_plan"
    t.integer "list_type"
    t.integer "status"
    t.datetime "deadline"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "durration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.string "heading"
    t.text "description"
    t.integer "tag"
    t.integer "status"
    t.bigint "goal_id"
    t.integer "milestone_serial"
    t.datetime "start_date"
    t.datetime "end_date"
    t.index ["goal_id"], name: "index_milestones_on_goal_id"
  end

  create_table "noticeboards", force: :cascade do |t|
    t.string "heading"
    t.string "content"
    t.integer "notice_type"
    t.integer "reminder_frequency"
    t.date "expiry_date"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "heading"
    t.string "content"
    t.integer "frequency"
    t.string "status"
    t.datetime "last_notified_at"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "onelogins", force: :cascade do |t|
    t.string "application_name"
    t.text "url"
    t.string "username"
    t.string "password"
    t.text "additional_info"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "gender"
    t.datetime "dob"
    t.text "aboutme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
