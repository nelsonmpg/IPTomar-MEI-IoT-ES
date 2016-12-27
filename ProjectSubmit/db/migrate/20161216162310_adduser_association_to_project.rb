class AdduserAssociationToProject < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :user_id, foreign_key: true
  end
end
