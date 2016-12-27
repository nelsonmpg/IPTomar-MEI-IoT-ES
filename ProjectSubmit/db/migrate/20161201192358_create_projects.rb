class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :resumo
      t.date :data
      t.string :file
      t.integer :tag_id
      t.integer :ClaSchool_id
      t.integer :School_id
      t.integer :User_id
      t.timestamps
    end
  end
end
