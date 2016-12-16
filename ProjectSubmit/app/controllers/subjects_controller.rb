class SubjectsController < ApplicationController
	before_action :authenticate_user!
	def index
    	@subjects = Subject.all
	end

	def show
    	@subject = Subject.find(params[:id])
	end

	def edit
    	@subject = Subject.find(params[:id])
	end

	def new
   		@subject = Subject.new
	end

	def update
    	@subject = Subject.find(params[:id])
 
  		if @subject.update(subject_params)
    		redirect_to subjects_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@subject = Subject.new(subject_params)

 		if @subject.save
  			redirect_to subjects_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@subject = Subject.find(params[:id])
    	@subject.destroy

    	redirect_to subjects_path
	end

	private
	def subject_params
    	params.require(:subject).permit(:name,:description,:code,:initials)
	end
end
