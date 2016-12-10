class Addgithubfromprojects < ActiveRecord::Migration[5.0]
  def change
      add_column :projects, :github, :text
  end
end
