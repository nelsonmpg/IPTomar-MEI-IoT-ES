class RemoveColumnsPresentationAndSubjectFromProject < ActiveRecord::Migration[5.0]
  def change
  	remove_column :projects, :presentation, :datetime
  	remove_column :projects, :subject_id, :integer
  end
end
