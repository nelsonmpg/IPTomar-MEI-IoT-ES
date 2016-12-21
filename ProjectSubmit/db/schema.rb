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

ActiveRecord::Schema.define(version: 20161221222713) do

  create_table "course_types", force: :cascade do |t|
    t.text     "name"
    t.integer  "cycle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_units", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "code"
    t.text     "initials"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "course_id"
    t.index ["course_id"], name: "index_course_units_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "name"
    t.integer  "code"
    t.text     "initials"
    t.integer  "school_id"
    t.integer  "coursetype_id"
    t.index ["coursetype_id"], name: "index_courses_on_coursetype_id"
    t.index ["school_id"], name: "index_courses_on_school_id"
  end

  create_table "documents", force: :cascade do |t|
    t.text     "description"
    t.date     "date"
    t.text     "local"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "name"
    t.integer  "project_id"
    t.index ["project_id"], name: "index_documents_on_project_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.text     "name"
    t.text     "initials"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people_projects", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "person_id",  null: false
  end

  create_table "person_types", force: :cascade do |t|
    t.text     "designation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "presentations", force: :cascade do |t|
    t.datetime "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "room"
  end

  create_table "presentations_projects", id: false, force: :cascade do |t|
    t.integer "project_id",      null: false
    t.integer "presentation_id", null: false
    t.index ["presentation_id", "project_id"], name: "index_presentations_projects_on_presentation_id_and_project_id"
    t.index ["project_id", "presentation_id"], name: "index_presentations_projects_on_project_id_and_presentation_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "resume"
    t.text     "github"
    t.text     "grade"
    t.text     "project_url"
    t.date     "date"
    t.boolean  "finished"
    t.boolean  "featured"
    t.datetime "presentation"
    t.integer  "user_id"
    t.integer  "subject_id"
    t.index ["subject_id"], name: "index_Projects_on_subject_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "name"
    t.integer  "code"
    t.text     "initials"
    t.integer  "institution_id"
    t.index ["institution_id"], name: "index_schools_on_institution_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
