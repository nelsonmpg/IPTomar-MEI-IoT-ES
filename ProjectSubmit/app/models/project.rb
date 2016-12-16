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
    #By: PedroMatos
end
