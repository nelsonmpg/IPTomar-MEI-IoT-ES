class CoursesController < ApplicationController
	layout :select_layout
#autenticação do user antes de entrar.....
before_filter :authenticate_user!, :except => [:index,:show]

def index
	@courses = Course.all.order('name asc').paginate(:page => params[:page], :per_page => 10)
end

def show
	@course = Course.find(params[:id])

end

def edit
	@course = Course.find(params[:id])
end

def new
	@course = Course.new
end

def update
	@course = Course.find(params[:id])

	if @course.update(course_params)
		redirect_to course_path @course
	else
		render 'edit'
	end
end

def create

	@course = Course.new(course_params)

	if @course.save
		redirect_to courses_path
	else
		render 'new'
	end
end

def destroy
	@course = Course.find(params[:id])
	@course.destroy

	redirect_to courses_path
end

private
def course_params
	params.require(:course).permit(:name,:code,:initials,:description,:school_id,:course_type_id)
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
