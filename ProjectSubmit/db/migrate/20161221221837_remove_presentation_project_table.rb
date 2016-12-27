class RemovePresentationProjectTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :presentations_projects
  end
end
