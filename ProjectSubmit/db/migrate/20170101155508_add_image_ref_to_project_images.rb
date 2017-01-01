class AddImageRefToProjectImages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :project_images, :image
  end

  def down
    remove_attachment :project_images, :image
  end
end
