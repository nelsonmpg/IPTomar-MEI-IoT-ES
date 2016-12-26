class School < ApplicationRecord
    validates :name, presence: { message: "O campo nome da escola não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo nome da escola tem de ter no minimo 4 caracteres." }
    validates :code, presence: { message: "O campo código da escola não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo código da escola tem de ter entre 2 a 6 digitos." }
    validates :initials, presence: { message: "O campo iniciais da escola não pode ser vazio." }, 
                            length: { in: 2..6 , :message => "O campo iniciais da escola tem de ter entre 2 a 6 caracteres." }
    validates :description, presence: { message: "O campo descrição da escola não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "O campo descrição da escola tem de ter no minimo 4 caracteres." }                                                
    
    def self.search(query)
  where("name like ?", "%#{query}%") 
end
    
    has_many :courses, dependent: :destroy
    has_many :projects, through:  :courses
    belongs_to :institution
    
  
    

end


