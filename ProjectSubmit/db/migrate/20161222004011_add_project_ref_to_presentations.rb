class AddProjectRefToPresentations < ActiveRecord::Migration[5.0]
  def change
    add_reference :presentations, :project, foreign_key: true
    rename_column :presentations, :day, :date
  end
end
