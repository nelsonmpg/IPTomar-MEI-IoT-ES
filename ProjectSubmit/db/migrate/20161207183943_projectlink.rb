class Projectlink < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :projectlink, :project_url
  end
end
