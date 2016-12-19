class AddProjectRefToDocument < ActiveRecord::Migration[5.0]
  def change
    add_reference :documents, :project, foreign_key: true
  end
end
