class Tag < ApplicationRecord
	has_many :projects
	has_many :tags, through: :projects
	has_many :taggings
	has_many :tags, through: :taggings
end
