class Project < ApplicationRecord
    has_one :user
    has_many :documents
    belongs_to :subject
    has_and_belongs_to_many :persons
end
