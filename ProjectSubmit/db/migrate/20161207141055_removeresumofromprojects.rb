class Removeresumofromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :resumo, :text
  end
end
