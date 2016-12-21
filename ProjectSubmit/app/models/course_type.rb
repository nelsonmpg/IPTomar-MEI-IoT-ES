class CourseType < ApplicationRecord

    validates :name, presence: { message: "O campo nome da cadeira não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo nome da cadeira tem de ter no minimo 4 caracteres." }
    validates :cycle, presence: { message: "O campo grau do curso não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo grau do curso tem de ter entre 2 a 6 digitos." }

    has_many :courses

end
