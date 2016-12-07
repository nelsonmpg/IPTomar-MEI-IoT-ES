class Removedatafromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :data, :date
  end
end
