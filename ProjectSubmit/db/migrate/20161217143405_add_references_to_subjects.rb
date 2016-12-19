class AddReferencesToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_index :courses, :course_id
    add_foreign_key :courses, :course_id
  end
end
