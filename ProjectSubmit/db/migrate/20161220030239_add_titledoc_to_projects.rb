class AddTitledocToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :titledoc, :string
  end
end
