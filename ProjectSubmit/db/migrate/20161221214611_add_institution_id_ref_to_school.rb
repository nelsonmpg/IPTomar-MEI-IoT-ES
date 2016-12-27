class AddInstitutionIdRefToSchool < ActiveRecord::Migration[5.0]
  def change
    add_reference :schools, :institution, index: true, foreign_key: true
  end
end
