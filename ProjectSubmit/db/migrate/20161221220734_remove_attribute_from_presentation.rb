class RemoveAttributeFromPresentation < ActiveRecord::Migration[5.0]
  def change
    remove_column :presentations, :sala, :text
  end
end
