class PersonType < ApplicationRecord
	validates :designation, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }
    has_many :people                        
end
