class CreateJoinTableProjectPresentation < ActiveRecord::Migration[5.0]
  def change
    create_join_table :projects, :presentations do |t|
       t.index [:project_id, :presentation_id]
       t.index [:presentation_id, :project_id]
    end
  end
end
