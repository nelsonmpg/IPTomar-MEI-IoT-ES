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

  def list
    photos = []
    Photo.all.each do |photo|
      new_photo = {
        id: photo.id,
        name: photo.image_file_name,
        size: photo.image_file_size,
        src: photo.image(:thumb)
      }
    photos.push(new_upload)
  end
    render json: { images: photos }
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:success] = "O ficheiro foi apagado."
    redirect_to root_path
  end

  def edit
      @photo = Photo.find(session[:id])
      #if request.post?
        @photo.edit #('photo', params[:photo])
        flash[:message] = "Dados Atualizados"
        #redirect_to :action => 'controlpanel'
        redirect_to root_path
      #end
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :title)
  end
end