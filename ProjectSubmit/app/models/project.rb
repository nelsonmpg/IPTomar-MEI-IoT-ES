class Project < ApplicationRecord
    
    has_many :documents
    belongs_to :course_unit
    belongs_to :user
    has_and_belongs_to_many :people  
    has_one :presentation
    has_and_belongs_to_many :supervisors, :class_name => "Person", :join_table => :projects_supervisors
end
