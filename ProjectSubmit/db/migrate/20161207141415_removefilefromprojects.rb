class Removefilefromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :file, :string
  end
end
