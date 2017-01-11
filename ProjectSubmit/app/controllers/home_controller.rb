class HomeController < ApplicationController

  def index
    @projects = Project.order('date DESC').paginate(:page => params[:page], :per_page => 8)
  end
end
