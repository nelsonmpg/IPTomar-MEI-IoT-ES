
ActiveRecord::Schema.define(version: 20161219222232) do

  create_table "courses", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "name"
    t.integer  "code"
    t.text     "initials"
    t.integer  "school_id"
    t.index ["school_id"], name: "index_courses_on_school_id"
  end

  create_table "documents", force: :cascade do |t|
    t.text     "description"
    t.date     "date"
    t.text     "local"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "name"
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
  end

  create_table "schools", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "name"
    t.integer  "code"
    t.text     "initials"
  end

  create_table "subjects", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "code"
    t.text     "initials"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "course_id"
    t.index ["course_id"], name: "index_subjects_on_course_id"
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
