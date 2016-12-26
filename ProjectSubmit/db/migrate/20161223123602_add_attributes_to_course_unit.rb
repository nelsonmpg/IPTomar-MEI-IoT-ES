class AddAttributesToCourseUnit < ActiveRecord::Migration[5.0]
  def change
    add_column :course_units, :year, :text
    add_column :course_units, :semester, :integer
  end
end
