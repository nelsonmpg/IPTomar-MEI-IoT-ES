class RemoveWrongReferenceToCourses < ActiveRecord::Migration[5.0]
  def change
    remove_index :courses, name: "index_courses_on_course_id"
    remove_foreign_key :courses, name: "index_courses_on_course_id"
  end
end
