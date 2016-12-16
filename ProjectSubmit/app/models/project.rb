class Project < ApplicationRecord
    has_one :user
    has_many :documents
    belongs_to :subject
    has_and_belongs_to_many :persons
    #tem de se criar uma tabela intermédia
    #person_id e project_id
    #o id da tabela intermédia deve ir para project
    # Para não se meter os pés pelas mãos, devemos pedir ajuda ao professor
    #--------
    # ainda falta as tag nos models...!
    #
    #has_and_belongs_to_many :tags
    #tabela project vai ser atulizada com rails db:setup
    #com o ficheiro db/migrate/20161216162310_adduser_association_to_project
    #By: PedroMatos
    
end
