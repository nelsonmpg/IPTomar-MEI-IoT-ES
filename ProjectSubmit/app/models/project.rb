class Project < ApplicationRecord
    has_one :user
    has_many :documents
    belongs_to :subject
    has_and_belongs_to_many :persons

    has_attached_file :image,
				  content_type: { content_type: ["image/jpeg", "image/gif", "image/png" , "image/pdf"] },	
                  styles: { thumb: ["100x100#", :jpg],
                            original: ['500x500>', :jpg] },
                  convert_options: { thumb: "-quality 75 -strip",
                                     original: "-quality 85 -strip" }		
    
	#has_attached_file :document, styles: {thumbnail: "60x60#"}
  	validates_attachment :image, content_type: { content_type: "application/pdf" },
  						:size => { :less_than => 1.megabyte }
  	#validates_something_else # Other validations that conflict with Paperclip's
end
