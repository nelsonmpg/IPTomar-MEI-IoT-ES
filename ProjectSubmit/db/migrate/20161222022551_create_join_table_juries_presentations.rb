class CreateJoinTableJuriesPresentations < ActiveRecord::Migration[5.0]
  def change

		create_table :juries_presentations, :id => false do |t|
			t.integer :person_id
			t.integer :presentation_id
		
			t.index [:person_id, :presentation_id], :unique => true
			t.index :presentation_id
			t.index :person_id
	# t.index [:person_id, :presentation_id]
	# t.index [:presentation_id, :person_id]
		end
	end
end
