class PhotosController < ApplicationController
  def index
    @photos = Photo.order('created_at')
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = "O ficheiro foi adicionado!"
      redirect_to root_path
    else
      render 'new'
    end
  end
def destroy
  @photo = Photo.find(params[:id])
  @photo.destroy
  flash[:success] = "O ficheiro foi apagado."
  redirect_to root_path
end
  private

  def photo_params
    params.require(:photo).permit(:image, :title)
  end
end