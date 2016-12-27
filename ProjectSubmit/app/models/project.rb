class Project < ApplicationRecord

	acts_as_taggable
    has_many :documents 

    
    has_many :documents
    belongs_to :course_unit
    belongs_to :user
    has_and_belongs_to_many :people  
    has_one :presentation, inverse_of: :project, dependent: :destroy
    has_and_belongs_to_many :supervisors, :class_name => "Person", :join_table => :projects_supervisors
    accepts_nested_attributes_for :presentation
end
