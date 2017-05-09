class CourseCategory < ApplicationRecord
	has_many :course_category_mappers, foreign_key: 'category_id'
	has_many :courses, through: :course_category_mappers
end
