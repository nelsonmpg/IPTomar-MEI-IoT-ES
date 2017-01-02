class AddAttributeToPresentation < ActiveRecord::Migration[5.0]
  def change
    add_column :presentations, :room, :text
  end
end
