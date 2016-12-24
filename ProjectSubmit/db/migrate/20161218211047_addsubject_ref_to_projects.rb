class AddsubjectRefToProjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :Projects, :subject, index: true, foreign_key: true
  end
end
