class RenameCourseTypeIdColumnFromCourses < ActiveRecord::Migration[5.0]
  def change
  	rename_column :courses, :coursetype_id, :course_type_id
  end
end
