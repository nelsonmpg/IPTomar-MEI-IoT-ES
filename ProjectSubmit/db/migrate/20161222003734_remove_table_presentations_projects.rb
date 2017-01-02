class RemoveTablePresentationsProjects < ActiveRecord::Migration[5.0]
  def up
    drop_table :presentations_projects
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
