class ProjectImagesController < ApplicationController
      before_filter :authenticate_user!, :except => [:index,:show]
	def index
    	@projectimages = ProjectImage.all
	end

	def show
    	@projectimage = ProjectImage.find(params[:id])
	end

	def edit
    	@projectimage = ProjectImage.find(params[:id])
	end

	def new
   		@projectimage = ProjectImage.new
	end

	def update
    	@projectimage = ProjectImage.find(params[:id])
 
  		if @projectimage.update(projectimage_params)
    		redirect_to project_images_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@projectimage = ProjectImage.new(projectimage_params)
        @projectimage.image
        @projectimage.save
 		if @projectimage.save
  			redirect_to project_images_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@projectimage = ProjectImage.find(params[:id])
    	@projectimage.destroy

    	redirect_to project_images_path
	end

	private
	def projectimage_params
    	params.require(:projectimage).permit(:image,:project_id)
	end
end
