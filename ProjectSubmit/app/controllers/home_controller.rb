class HomeController < ApplicationController

  def index
    @projects = Project.paginate(:page => params[:page], :per_page => 8)
  end
end
