class RssController < ApplicationController
  def feed
    respond_to do |format|
    	format.html
      	format.rss { render :layout => false }
    end
  end
end
