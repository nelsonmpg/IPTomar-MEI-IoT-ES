class Addpresentationfromprojects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :presentation, :datetime
  end
end
