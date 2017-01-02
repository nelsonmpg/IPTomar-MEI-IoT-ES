class CourseUnitsController < ApplicationController
	before_filter :authenticate_user!, :except => [:index,:show]
	def index
    	@courseunits = CourseUnit.all
	end

	def show
    	@courseunit = CourseUnit.find(params[:id])
	end

	def edit
    	@courseunit = CourseUnit.find(params[:id])
	end

	def new
   		@courseunit = CourseUnit.new
	end

	def update
    	@courseunit = CourseUnit.find(params[:id])
 
  		if @courseunit.update(courseunit_params)
    		redirect_to course_units_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@courseunit = CourseUnit.new(courseunit_params)

 		if @courseunit.save
  			redirect_to course_units_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@courseunit = CourseUnit.find(params[:id])
    	@courseunit.destroy

    	redirect_to course_units_path
	end

	private
	def courseunit_params
    	params.require(:courseunit).permit(:name,:description,:code,:initials,:course_id)
	end
end
