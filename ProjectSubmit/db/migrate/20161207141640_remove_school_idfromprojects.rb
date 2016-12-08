class RemoveSchoolIdfromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :School_id, :integer
  end
end
