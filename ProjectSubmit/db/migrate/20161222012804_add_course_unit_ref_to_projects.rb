class AddCourseUnitRefToProjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :course_unit, foreign_key: true
  end
end
