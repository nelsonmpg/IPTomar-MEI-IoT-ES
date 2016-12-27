class CourseTypesController < ApplicationController
    before_filter :authenticate_user!, :except => [:index,:show]
	def index
    	@coursetypes = CourseType.all
	end

	def show
    	@coursetype = CourseType.find(params[:id])
	end

	def edit
    	@coursetype = CourseType.find(params[:id])
	end

	def new
   		@coursetype = CourseType.new
	end

	def update
    	@coursetype = CourseType.find(params[:id])
 
  		if @coursetype.update(coursetype_params)
    		redirect_to course_types_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@coursetype = CourseType.new(coursetype_params)

 		if @coursetype.save
  			redirect_to course_types_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@coursetype = CourseType.find(params[:id])
    	@coursetype.destroy

    	redirect_to course_types_path
	end

	private
	def coursetype_params
    	params.require(:coursetype).permit(:name,:cycle)
	end
end
