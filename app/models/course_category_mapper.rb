class CourseCategoryMapper < ApplicationRecord
	belongs_to :course
	belongs_to :course_category
end
