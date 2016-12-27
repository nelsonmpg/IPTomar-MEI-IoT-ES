class RemoveInstitutionRefFromSchool < ActiveRecord::Migration[5.0]
  def change
    remove_column :institutions, :school, :integer
    remove_column :institutions, :school_id, :integer
  end
end
