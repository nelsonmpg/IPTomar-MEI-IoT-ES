<<<<<<< HEAD
json.extract! project, :id, :title, :created_at, :updated_at, :resume, :github, :grade, :project_url, :date, :presentation, :featured, :finished, :tag_list
=======
json.extract! project, :id, :title, :created_at, :updated_at, :resume, :github, :grade, :project_url, :date, :presentation, :featured, :finished, :user_id, :subject_id
>>>>>>> refs/remotes/origin/master
json.url project_url(project, format: :json)
