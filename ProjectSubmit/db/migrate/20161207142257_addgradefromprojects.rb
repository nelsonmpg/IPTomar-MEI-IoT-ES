class Addgradefromprojects < ActiveRecord::Migration[5.0]
  def change
      add_column :projects, :grade, :text
  end
end
