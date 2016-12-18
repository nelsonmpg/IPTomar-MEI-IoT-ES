class AlterCourses < ActiveRecord::Migration[5.0]
  def change
  	add_column :courses, :name, :text
  	add_column :courses, :code, :integer
  	add_column :courses, :initials, :text
  end
end
