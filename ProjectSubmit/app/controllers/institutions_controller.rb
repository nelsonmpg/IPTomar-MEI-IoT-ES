class InstitutionsController < ApplicationController
    	#autenticação do user antes de entrar.....
  before_filter :authenticate_user!, :except => [:index,:show]
	
	def index
    	@institutions = Institution.all
	end

	def show
    	@institution = Institution.find(params[:id])
			
	end

	def edit
    	@institution = Institution.find(params[:id])
	end

	def new
   		@institution = Institution.new
	end

	def update
    	@institution = Institution.find(params[:id])

  		if @institution.update(institution_params)
    		redirect_to institutions_path
  		else
    		render 'edit'
  		end
	end

	def create

    	@institution = Institution.new(institution_params)

 		if @institution.save
  			redirect_to institutions_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@institution = Institution.find(params[:id])
    	@institution.destroy

    	redirect_to institutions_path
	end

	private
	def institution_params
    	params.require(:institution).permit(:name,:code,:initials)
	end
end
