class RemoveuserIdIdfromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :user_id_id, :integer
  end
end
