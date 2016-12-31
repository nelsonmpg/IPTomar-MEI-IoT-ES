class AddDocumentColumnsToDocuments < ActiveRecord::Migration[5.0]
  def up
    add_attachment :documents, :document
  end

  def down
    remove_attachment :documents, :document
  end
end
