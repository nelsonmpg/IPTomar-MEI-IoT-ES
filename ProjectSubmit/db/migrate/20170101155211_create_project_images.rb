class CreateProjectImages < ActiveRecord::Migration[5.0]
  def change
    create_table :project_images do |t|

      t.timestamps
    end
  end
end
