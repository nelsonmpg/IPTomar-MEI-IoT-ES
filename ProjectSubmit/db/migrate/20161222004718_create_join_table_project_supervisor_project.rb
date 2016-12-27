class CreateJoinTableProjectSupervisorProject < ActiveRecord::Migration[5.0]
	def change

		create_table :projects_supervisors, :id => false do |t|
			t.integer :person_id
			t.integer :project_id
		

			t.index [:person_id, :project_id], :unique => true
			t.index :project_id
			t.index :person_id
	# t.index [:person_id, :project_id]
	# t.index [:project_id, :person_id]
		end
	end
end
