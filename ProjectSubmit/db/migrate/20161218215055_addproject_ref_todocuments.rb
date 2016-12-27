class AddprojectRefTodocuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :documents, :project, index: true, foreign_key: true
  end
end
