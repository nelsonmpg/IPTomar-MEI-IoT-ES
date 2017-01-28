class Project < ApplicationRecord

    validates :title, presence: { message: "O campo titulo não pode ser vazio." }, 
    length: { minimum: 4 , :message => "O campo titulo tem de ter no minimo 4 caracteres." }
    validates :date, presence: { message: "O campo data não pode ser vazio." }


    acts_as_taggable


    belongs_to :course_unit
    belongs_to :user
    has_and_belongs_to_many :people  
    has_one :presentation, inverse_of: :project, dependent: :destroy
    has_many :documents, inverse_of: :project, dependent: :destroy
    has_many :project_images, inverse_of: :project, dependent: :destroy
    has_and_belongs_to_many :supervisors, :class_name => "Person", :join_table => :projects_supervisors
    accepts_nested_attributes_for :presentation, allow_destroy: true, reject_if: proc { |att| att['date'].blank? && att['room'].blank? && att['slides'].blank? }
    accepts_nested_attributes_for :documents, allow_destroy: true, reject_if: proc { |att| att['document'].blank? }
    accepts_nested_attributes_for :project_images, allow_destroy: true, reject_if: proc { |att| att['image'].blank? }



    def self.search_by_title(title)
        where("title LIKE ? ", "%#{title}%") 
    end


end
