class CourseType < ApplicationRecord

    validates :name, presence: { message: "O campo nome da cadeira não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo nome da cadeira tem de ter no minimo 4 caracteres." }
    validates :cycle, numericality: { only_integer: true, allow_nil: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3, :message => "O ciclo do curso tem de ser entre 1 e 3." }
    
    has_many :courses

end
