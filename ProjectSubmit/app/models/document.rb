class Document < ApplicationRecord

    #já estava
    belongs_to :project, inverse_of: :documents, dependent: :destroy

    has_attached_file :document
    validates_attachment :document, content_type: { content_type: "application/pdf" }

    
end
