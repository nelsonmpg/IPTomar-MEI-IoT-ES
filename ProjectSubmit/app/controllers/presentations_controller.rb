class PresentationsController < ApplicationController
    before_filter :authenticate_user!, :except => [:index,:show]
	
	def index
    	@presentations = Presentation.all
	end

	def show
    	@presentation = Presentation.find(params[:id])
			
	end

	def edit
    	@presentation = Presentation.find(params[:id])
	end

	def new
   		@presentation = Presentation.new
	end

	def update
    	@presentation = Presentation.find(params[:id])

  		if @presentation.update(presentation_params)
    		redirect_to presentations_path
  		else
    		render 'edit'
  		end
	end

	def create

    	@presentation = Presentation.new(presentatione_params)

 		if @presentation.save
  			redirect_to presentations_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@presentation = Presentation.find(params[:id])
    	@presentation.destroy

    	redirect_to presentations_path
	end

	private
	def presentation_params
    	params.require(:presentation).permit(:date,:room,:project_id)
	end
end

end
