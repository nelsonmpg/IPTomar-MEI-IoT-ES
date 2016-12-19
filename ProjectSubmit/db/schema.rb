
ActiveRecord::Schema.define(version: 20161219222232) do
    t.integer  "project_id"
    t.integer  "user_id"
    t.index ["project_id"], name: "index_documents_on_project_id"
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

end
