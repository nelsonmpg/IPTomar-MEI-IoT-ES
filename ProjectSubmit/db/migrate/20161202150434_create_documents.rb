class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.text :description
      t.date :date
      t.text :local

      t.timestamps
    end
  end
end
