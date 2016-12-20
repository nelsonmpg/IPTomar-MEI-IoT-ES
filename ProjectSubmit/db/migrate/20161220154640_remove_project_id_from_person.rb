class RemoveProjectIdFromPerson < ActiveRecord::Migration[5.0]
  def change
    remove_column :people, :project_id, :integer
  end
end
