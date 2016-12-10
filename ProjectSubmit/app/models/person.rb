class Person < ApplicationRecord
    validates :name, length: { minimum: 3 , :message => "Tem de ter no minimo 3 caracteres." }
    validates :email, presence: true
    validates :photo, presence: true
    has_and_belongs_to_many :projects
    has_one :person_type
end
