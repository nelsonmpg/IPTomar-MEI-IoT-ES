class CoursesController < ApplicationController
	#autenticação do user antes de entrar.....
 # before_action :authenticate_user!
	
	def index
    	@courses = Course.all
		@schools = School.all
	end

	def show
    	@course = Course.find(params[:id])
		@schools = School.all
			
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
    		redirect_to courses_path
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
    	params.require(:course).permit(:name,:code,:initials,:description,:school_id)
	end
end
