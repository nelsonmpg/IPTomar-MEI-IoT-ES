class RemovePersonFromProject < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :person_id, :integer
  end
end
