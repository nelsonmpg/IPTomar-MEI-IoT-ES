json.extract! project, :id, :title, :created_at, :updated_at, :resume, :github, :grade, :projectlink, :date, :presentation, :feature, :finished
json.url project_url(project, format: :json)
