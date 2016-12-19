class AddReferencesToCourses < ActiveRecord::Migration[5.0]
  def change
    add_index :courses, :school_id
    add_foreign_key :courses, :school_id
  end
end
