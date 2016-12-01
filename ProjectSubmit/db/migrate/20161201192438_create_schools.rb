class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.text :description

      t.timestamps
    end
  end
end
