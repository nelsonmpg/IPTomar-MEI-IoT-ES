class CreateInstitutions < ActiveRecord::Migration[5.0]
  def change
    create_table :institutions do |t|
      t.text :name
      t.text :initials
      t.integer :code

      t.timestamps
    end
  end
end
