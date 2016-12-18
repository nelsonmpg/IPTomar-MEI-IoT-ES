class AddReferencescorrectToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_index :subjects, :course_id
    add_foreign_key :subjects, :course_id
  end
end
