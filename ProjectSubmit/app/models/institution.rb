class Institution < ApplicationRecord

    validates :name, presence: { message: "O campo nome da instituição não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo nome da instituição tem de ter no minimo 4 caracteres." }
    validates :code, presence: { message: "O campo código da instituição não pode ser vazio." }, 
                            length: { in: 2..10 , :message => "O campo código da instituição tem de ter entre 2 a 10 digitos." }
    validates :initials, presence: { message: "O campo iniciais da instituição não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo iniciais da instituição tem de ter entre 2 a 6 caracteres." }
   

    has_many :schools

end
