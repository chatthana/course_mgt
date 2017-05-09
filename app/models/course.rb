class Course < ApplicationRecord
	has_many :course_category_mappers
	has_many :categories, through: :course_category_mappers
end
