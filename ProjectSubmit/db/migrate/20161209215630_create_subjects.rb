class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.text :name
      t.text :description
      t.integer :code
      t.text :initials

      t.timestamps
    end
  end
end
