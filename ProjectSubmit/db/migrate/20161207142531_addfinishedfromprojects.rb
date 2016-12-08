class Addfinishedfromprojects < ActiveRecord::Migration[5.0]
  def change
      add_column :projects, :finished, :boolean
  end
end
