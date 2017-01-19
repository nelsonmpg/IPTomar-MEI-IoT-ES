class RssController < ApplicationController
  def feed
    @projects = Project.last(8)
    respond_to do |format|
    	format.html
      	format.rss { render :layout => false }
    end
  end
end
