class Addfeaturefromprojects < ActiveRecord::Migration[5.0]
  def change
      add_column :projects, :feature, :boolean
  end
end
