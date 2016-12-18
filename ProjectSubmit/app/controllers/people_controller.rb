class PeopleController < ApplicationController
	def index
    	@people = People.all
	end

	def show
    	@person = People.find(params[:id])
	end

	def edit
    	@person = People.find(params[:id])
	end

	def new
   		@person = People.new
	end

	def update
    	@person = People.find(params[:id])
 
  		if @person.update(person_params)
    		redirect_to people_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@person = People.new(person_params)

 		if @person.save
  			redirect_to people_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@person = People.find(params[:id])
    	@person.destroy

    	redirect_to people_path
	end

	private
	def person_params
    	params.require(:person).permit(:name,:email,:photo)
	end
end
