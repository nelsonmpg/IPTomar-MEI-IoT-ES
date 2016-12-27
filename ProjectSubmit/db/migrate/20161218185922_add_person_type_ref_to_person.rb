class AddPersonTypeRefToPerson < ActiveRecord::Migration[5.0]
  def change
    add_reference :people, :persontype, foreign_key: true
  end
end
