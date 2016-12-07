class Addprojectlinkfromprojects < ActiveRecord::Migration[5.0]
  def change
      add_column :projects, :projectlink, :text
  end
end
