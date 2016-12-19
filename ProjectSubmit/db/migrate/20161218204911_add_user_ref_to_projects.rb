class AddUserRefToProjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :user, index: true, foreign_key: true
  end
end