class AddSlideColumnsToPresentations < ActiveRecord::Migration[5.0]
  def up
    add_attachment :presentations, :slides
  end

  def down
    remove_attachment :presentations, :slides
  end
end
