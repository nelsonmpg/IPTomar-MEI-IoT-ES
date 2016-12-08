class Removefeaturefromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :feature, :boolean
  end
end
