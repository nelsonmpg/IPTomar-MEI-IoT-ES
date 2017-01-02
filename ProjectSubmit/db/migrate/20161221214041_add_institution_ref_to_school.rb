class AddInstitutionRefToSchool < ActiveRecord::Migration[5.0]
  def change
    add_reference :institutions, :school, index: true, foreign_key: true
  end
end
