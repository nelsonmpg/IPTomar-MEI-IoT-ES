class School < ApplicationRecord
    validates :name, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }
    validates :code, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 3 , :message => "Tem de ter no minimo 4 caracteres." }
    validates :initials, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 3 , :message => "Tem de ter no minimo 3 caracteres." }
    validates :description, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }                                                
    
    def self.search(query)
  where("name like ?", "%#{query}%") 
end
    
    has_many :courses
  
    

end


