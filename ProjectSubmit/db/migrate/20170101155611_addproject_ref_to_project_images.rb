class AddprojectRefToProjectImages < ActiveRecord::Migration[5.0]
  def change
    add_reference :project_images, :project, foreign_key: true
  end
end
