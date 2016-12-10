class CreatePersonTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :person_types do |t|
      t.text :designation

      t.timestamps
    end
  end
end
