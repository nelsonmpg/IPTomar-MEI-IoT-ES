class Course < ApplicationRecord
	validates :description, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }
    validates :name, length: { minimum: 3 , :message => "Tem de ter no minimo 3 caracteres." }
    validates :code, length: { in: 2..6 }
    validates :initials, length: { in: 2..6 }
    belongs_to :school
    has_many :subjects
end