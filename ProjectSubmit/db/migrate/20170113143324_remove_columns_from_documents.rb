class RemoveColumnsFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :description, :text
  	remove_column :documents, :date, :date
    remove_column :documents, :local, :text
    remove_column :documents, :name, :text
  end
end
