class Project < ApplicationRecord
	acts_as_taggable
    has_many :documents 
end
