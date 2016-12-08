class RemoveClaSchoolIdfromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :ClaSchool_id, :integer
  end
end
