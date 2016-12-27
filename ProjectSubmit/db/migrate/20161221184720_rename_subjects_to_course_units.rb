class RenameSubjectsToCourseUnits < ActiveRecord::Migration[5.0]
  def change
    rename_table :subjects, :course_units
  end
end
