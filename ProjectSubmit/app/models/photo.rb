class Photo < ApplicationRecord
#validates_attachment :image,
#                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
#                     styles: { thumb: ["64x64#", :jpg] }
#                     do_not_validate_attachment_file_type :avatar
	
	#has_attached_file :image, validate_media_type: false,
	#			      :styles => { :thumb => "100x100#"},
	#			      :default_url => "/images/:style/missing.png"

	##has_attached_file :image,
	##			  content_type: { content_type: ["image/jpeg", "image/gif", "image/png" , "image/pdf"] },	
    ##              styles: { thumb: ["100x100#", :jpg],
    ##                        original: ['500x500>', :jpg] },
    ##              convert_options: { thumb: "-quality 75 -strip",
    ##                                 original: "-quality 85 -strip" }		
    
	#has_attached_file :document, styles: {thumbnail: "60x60#"}
  	##validates_attachment :image, content_type: { content_type: "application/pdf" },
  	##					:size => { :less_than => 1.megabyte }
  	##validates_something_else # Other validations that conflict with Paperclip's

has_attached_file :image
validates_attachment :image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}


	#validates_attachment 	:image, 
	#			:presence => true,
	#			:content_type => { :content_type => /\Aimage\/.*\Z/ },
	#			:size => { :less_than => 1.megabyte }

    #has_attached_file :document
	
	#validates_attachment :document, 
	#				:content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }


	


end
