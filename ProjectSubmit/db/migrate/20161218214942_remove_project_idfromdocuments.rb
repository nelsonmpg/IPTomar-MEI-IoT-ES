class RemoveProjectIdfromdocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :Project_id, :integer
  end
end
