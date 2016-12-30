class HomeController < ApplicationController

  def index
  	#skip_before_action :authenticate_user!, :only => [:index]
    @projects = Project.paginate(:page => params[:page], :per_page => 8)
  end
end
