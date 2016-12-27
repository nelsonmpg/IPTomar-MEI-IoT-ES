class CreatePresentations < ActiveRecord::Migration[5.0]
  def change
    create_table :presentations do |t|
      t.datetime :day
      t.text :sala

      t.timestamps
    end
  end
end
