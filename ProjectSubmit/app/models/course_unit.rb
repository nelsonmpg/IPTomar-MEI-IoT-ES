class CourseUnit < ApplicationRecord
	validates :name, presence: { message: "O campo nome da cadeira não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo nome da cadeira tem de ter no minimo 4 caracteres." }
    validates :code, presence: { message: "O campo código da cadeira não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo código da cadeira tem de ter entre 2 a 6 digitos." }
    validates :initials, presence: { message: "O campo iniciais da cadeira não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo iniciais da cadeira tem de ter entre 2 a 6 caracteres." }
    validates :description, presence: { message: "O campo descrição da cadeira não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo descrição da cadeira tem de ter no minimo 4 caracteres." }                                                
    
   
    belongs_to :course
    has_many :projects, dependent: :destroy
end
