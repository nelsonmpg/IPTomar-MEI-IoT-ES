class RemoveProjectRefTodocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :Project, :integer
  end
end
