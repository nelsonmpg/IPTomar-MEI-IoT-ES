class Addresumefromprojects < ActiveRecord::Migration[5.0]
  def change
      add_column :projects, :resume, :text
  end
end
