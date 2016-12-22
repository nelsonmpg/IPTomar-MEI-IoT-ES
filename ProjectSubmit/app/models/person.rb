class Person < ApplicationRecord
    validates :name, length: { minimum: 3 , :message => "Tem de ter no minimo 3 caracteres." }
    validates :email, presence: true
    #validates :photo, presence: true
    has_and_belongs_to_many :projects
    has_one :person_type

    has_and_belongs_to_many :supervised_projects, :class_name => "Project", :join_table => :projects_supervisors
    has_and_belongs_to_many :juried_presentations, :class_name => "Presentation", :join_table => :juries_presentations
end
