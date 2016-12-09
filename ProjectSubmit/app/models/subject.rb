class Subject < ApplicationRecord
	validates :description, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }
    validates :name, lenght: { minimum: 3 , :message => "Tem de ter no minimo 3 caracteres." }
    validates :code, lenght: { in: 2..6 }
    validates :initials, lenght: { in: 2..6 }
    belongs_to :course
    has_many :projects
end
