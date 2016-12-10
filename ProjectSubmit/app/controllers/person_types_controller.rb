class PersonTypesController < ApplicationController
	def index
    	@persontypes = Persontype.all
	end

	def show
    	@persontype = Persontype.find(params[:id])
	end

	def edit
    	@persontype = Persontype.find(params[:id])
	end

	def new
   		@persontype = Persontype.new
	end

	def update
    	@persontype = Persontype.find(params[:id])
 
  		if @persontype.update(persontype_params)
    		redirect_to persontypes_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@persontype = Persontype.new(persontype_params)

 		if @persontype.save
  			redirect_to persontypes_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@persontype = Persontype.find(params[:id])
    	@persontype.destroy

    	redirect_to persontypes_path
	end

	private
	def persontype_params
    	params.require(:persontype).permit(:designation)
	end
end
