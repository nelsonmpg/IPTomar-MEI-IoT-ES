class PeopleController < ApplicationController
	def index
    	@peoples = People.all
	end

	def show
    	@people = People.find(params[:id])
	end

	def edit
    	@people = People.find(params[:id])
	end

	def new
   		@people = People.new
	end

	def update
    	@people = People.find(params[:id])
 
  		if @people.update(people_params)
    		redirect_to peoples_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@people = People.new(people_params)

 		if @people.save
  			redirect_to peoples_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@people = People.find(params[:id])
    	@people.destroy

    	redirect_to peoples_path
	end

	private
	def people_params
    	params.require(:people).permit(:name,:email,:photo)
	end
end
