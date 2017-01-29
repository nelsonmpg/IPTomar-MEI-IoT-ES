class HomeController < ApplicationController

  def index
   # @projects = Project.order('date DESC').paginate(:page => params[:page], :per_page => 8)
     if params[:title]
        @projects = Project.search_by_title(params[:title]).order("title desc").paginate(:page => params[:page], :per_page => 10)
      else
          @projects = Project.all.paginate(:page => params[:page], :per_page => 10)
      end
    end
end
