class Photo < ApplicationRecord
#validates_attachment :image,
#                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
#                     styles: { thumb: ["64x64#", :jpg] }
#                     do_not_validate_attachment_file_type :avatar
	
	#has_attached_file :image, validate_media_type: false,
	#			      :styles => { :thumb => "100x100#"},
	#			      :default_url => "/images/:style/missing.png"

	has_attached_file :image,
				  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },	
                  #styles: { thumb: ["64x64#", :jpg],
                  #          original: ['500x500>', :jpg] },
                  convert_options: { thumb: "-quality 75 -strip",
                                     original: "-quality 85 -strip" }		      

	validates_attachment 	:image, 
				:presence => true,
				:content_type => { :content_type => /\Aimage\/.*\Z/ },
				:size => { :less_than => 1.megabyte }

end
