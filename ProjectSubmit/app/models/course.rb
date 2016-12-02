class Course < ApplicationRecord
	validates :description, presence: true,
                    length: { minimum: 4 }
end
