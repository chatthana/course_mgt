class CoursesController < ApplicationController
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

	def category
		@category = CourseCategory.find_by(name:params[:category])
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		@course.save
		respond_to do |format|
			format.js
		end
	end

	def search
		
		@courses = Course.all

		if !params[:search][:title_search].blank?
			@courses = @courses.where('course_name LIKE ?', '%' + params[:search][:title_search] + '%')
		end

		if !params[:search][:search_course_date].blank?
			@courses = @courses.where('course_date = ?', params[:search][:search_course_date])
		end

		if !params[:search][:search_start_time].blank?
			@courses = @courses.where('course_start_time = ?', params[:search][:search_start_time])
		end

		respond_to do |format|
			format.js
			format.html
		end
		
	end

	private
		def course_params
			params.require(:course).permit(:course_id, :course_name, :course_description, :course_date, :course_start_time, :course_end_time)
		end
end
