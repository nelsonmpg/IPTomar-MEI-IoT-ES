class CreateCourseTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :course_types do |t|
      t.text :name
      t.integer :cycle

      t.timestamps
    end
  end
end
