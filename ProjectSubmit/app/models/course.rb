class Course < ApplicationRecord
	validates :name, presence: { message: "O campo nome do curso não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo nome do curso tem de ter no minimo 4 caracteres." }
    validates :code, presence: { message: "O campo código do curso não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo código do curso tem de ter entre 2 a 6 digitos." }
    validates :initials, presence: { message: "O campo iniciais do curso não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo iniciais do curso tem de ter entre 2 a 6 caracteres." }
    validates :description, presence: { message: "O campo descrição do curso não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo descrição do curso tem de ter no minimo 4 caracteres." }                                                
    
    

    belongs_to :school
    has_many :subjects
   
end
