class AddDetailsToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :name, :text
  end
end
