class Project < ApplicationRecord
    
    has_many :documents
    belongs_to :subject
    belongs_to :user
    has_and_belongs_to_many :persons  
end
