class AddPhotoColumnsToPerson < ActiveRecord::Migration[5.0]
  def up
    add_attachment :people, :photo
  end

  def down
    remove_attachment :people, :photo  
  end
end
