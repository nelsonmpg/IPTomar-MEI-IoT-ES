class Project < ApplicationRecord

	acts_as_taggable
    
    belongs_to :course_unit
    belongs_to :user
    has_and_belongs_to_many :people  
    has_one :presentation, inverse_of: :project, dependent: :destroy
    has_many :documents, inverse_of: :project, dependent: :destroy
    has_many :project_images, inverse_of: :project, dependent: :destroy
    has_and_belongs_to_many :supervisors, :class_name => "Person", :join_table => :projects_supervisors
    accepts_nested_attributes_for :presentation, allow_destroy: true, reject_if: proc { |att| att['date'].blank? && att['room'].blank? && att['slides_file_name'].blank? }
    accepts_nested_attributes_for :documents, allow_destroy: true, reject_if: proc { |att| att['document_file_name'].blank? }
    accepts_nested_attributes_for :project_images, allow_destroy: true, reject_if: proc { |att| att['image_file_name'].blank? }
    
end
