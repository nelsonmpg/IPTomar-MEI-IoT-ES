class CourseUnitsController < ApplicationController
	layout :select_layout

	before_filter :authenticate_user!, :except => [:index,:show]
	def index
		@course_units = CourseUnit.all
	end

	def show
		@course_unit = CourseUnit.find(params[:id])
	end

	def edit
		@course_unit = CourseUnit.find(params[:id])
	end

	def new
		@course_unit = CourseUnit.new
	end

	def update
		@course_unit = CourseUnit.find(params[:id])

		if @course_units.update(course_unit_params)
			redirect_to course_units_path
		else
			render 'edit'
		end
	end

	def create
		@course_unit = CourseUnit.new(course_unit_params)

		if @course_unit.save
			redirect_to course_units_path
		else
			render 'new'
		end
	end

	def destroy
		@course_unit = CourseUnit.find(params[:id])
		@course_unit.destroy

		redirect_to course_units_path
	end

	private
	def course_unit_params
		params.require(:course_unit).permit(:name,:description,:code,:initials,:course_id)
	end


	def select_layout
		case action_name
		when "new", "edit"
			"app_nosidebar"
		else
			"application"
		end
	end

end
