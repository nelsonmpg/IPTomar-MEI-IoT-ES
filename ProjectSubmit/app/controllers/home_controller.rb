class HomeController < ApplicationController

  def index
    @projects = Project.paginate(:page => params[:page], :per_page => 9)
  end
end
