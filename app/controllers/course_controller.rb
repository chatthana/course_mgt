class CourseController < ApplicationController
	load_and_authorize_resource
	def index
		if is_login?
			@categories = CourseCategory.all
			@courses = Course.all
		else
			redirect_to :controller => 'session', :action => 'create'
		end
		
	end

	def view
		if params['catname'].nil?
			@category = CourseCategory.all
		else
			@category = CourseCategory.find_by(name: params['catname'])
		end
	end

	def test
		
	end
end
