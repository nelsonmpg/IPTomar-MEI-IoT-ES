class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
#retirado a possibilidade de registar user sendo user :registerable,

  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
		# has_many :documents
     has_many :projects
     #aqui a ligação
     #belongs_to :project
end
