class PeopleController < ApplicationController
	#autenticação do user antes de entrar.....
  before_action :authenticate_user!
	def index
    	@people = Person.all
	end

	def show
    	@person = Person.find(params[:id])
	end

	def edit
    	@person = Person.find(params[:id])
	end

	def new
   		@person = Person.new
	end

	def update
    	@person = Person.find(params[:id])
 
  		if @person.update(person_params)
    		redirect_to people_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@person = Person.new(person_params)
		@person.photo
		@person.save
 		if @person.save
  			redirect_to people_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@person = Person.find(params[:id])
    	@person.destroy

    	redirect_to people_path
	end

	private
	def person_params
    	params.require(:person).permit(:name,:email,:photo,:person_type_id)
	end
end
