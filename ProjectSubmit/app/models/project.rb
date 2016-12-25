class Project < ApplicationRecord

	acts_as_taggable
    has_many :documents 

    
    has_many :documents
    belongs_to :subject
    belongs_to :user
    has_and_belongs_to_many :persons  

end
