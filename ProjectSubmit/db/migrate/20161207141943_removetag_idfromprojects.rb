class RemovetagIdfromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :tag_id, :integer
  end
end
