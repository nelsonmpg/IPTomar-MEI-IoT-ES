class RemovecolumnsFromPerson < ActiveRecord::Migration[5.0]
  def change
    remove_column :people, :photo, :text
  	remove_column :people, :photo_file_name, :string
    remove_column :people, :photo_content_type, :string
    remove_column :people, :photo_file_size, :integer
    remove_column :people, :photo_updated_at, :datetime
  end
end
