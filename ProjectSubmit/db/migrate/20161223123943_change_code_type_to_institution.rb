class ChangeCodeTypeToInstitution < ActiveRecord::Migration[5.0]
  def change
    change_column :institutions, :code, :string
  end
end
