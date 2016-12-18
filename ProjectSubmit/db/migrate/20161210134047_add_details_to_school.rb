class AddDetailsToSchool < ActiveRecord::Migration[5.0]
  def change
    add_column :schools, :name, :text
    add_column :schools, :code, :integer
    add_column :schools, :initials, :text
  end
end
