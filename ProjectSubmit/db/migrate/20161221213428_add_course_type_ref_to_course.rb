class AddCourseTypeRefToCourse < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :coursetype, index: true, foreign_key: true
  end
end
