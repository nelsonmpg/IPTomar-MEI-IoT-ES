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

ActiveRecord::Schema.define(version: 20170101155611) do

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
    t.text     "year"
    t.integer  "semester"
    t.index ["course_id"], name: "index_course_units_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "name"
    t.integer  "code"
    t.text     "initials"
    t.integer  "school_id"
    t.integer  "course_type_id"
    t.index ["course_type_id"], name: "index_courses_on_course_type_id"
    t.index ["school_id"], name: "index_courses_on_school_id"
  end

  create_table "documents", force: :cascade do |t|
    t.text     "description"
    t.date     "date"
    t.text     "local"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.text     "name"
    t.integer  "project_id"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.index ["project_id"], name: "index_documents_on_project_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.text     "name"
    t.text     "initials"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "juries_presentations", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "presentation_id"
    t.index ["person_id", "presentation_id"], name: "index_juries_presentations_on_person_id_and_presentation_id", unique: true
    t.index ["person_id"], name: "index_juries_presentations_on_person_id"
    t.index ["presentation_id"], name: "index_juries_presentations_on_presentation_id"
  end

  create_table "people", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
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
    t.datetime "date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "room"
    t.integer  "project_id"
    t.string   "slides_file_name"
    t.string   "slides_content_type"
    t.integer  "slides_file_size"
    t.datetime "slides_updated_at"
    t.index ["project_id"], name: "index_presentations_on_project_id"
  end

  create_table "project_images", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "project_id"
    t.index ["project_id"], name: "index_project_images_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "resume"
    t.text     "github"
    t.text     "grade"
    t.text     "project_url"
    t.date     "date"
    t.boolean  "finished"
    t.boolean  "featured"
    t.integer  "user_id"
    t.integer  "course_unit_id"
    t.index ["course_unit_id"], name: "index_projects_on_course_unit_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "projects_supervisors", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "project_id"
    t.index ["person_id", "project_id"], name: "index_projects_supervisors_on_person_id_and_project_id", unique: true
    t.index ["person_id"], name: "index_projects_supervisors_on_person_id"
    t.index ["project_id"], name: "index_projects_supervisors_on_project_id"
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

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.string   "tagger_type"
    t.integer  "tagger_id"
    t.string   "context",       limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
