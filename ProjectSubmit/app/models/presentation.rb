class Presentation < ApplicationRecord

    validates :day, presence: { message: "O campo nome da cadeira não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo nome da cadeira tem de ter no minimo 4 caracteres." }
    validates :room, presence: { message: "O campo código da cadeira não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo código da cadeira tem de ter entre 2 a 6 digitos." }
   



    has_one :project
    
end
