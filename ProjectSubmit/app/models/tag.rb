class Tag < ApplicationRecord
	has_many :projects
	has_many :tags, through: :projects
end
