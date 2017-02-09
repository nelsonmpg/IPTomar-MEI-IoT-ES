class HomeController < ApplicationController
	layout 'application'

	def index
		# @projects = Project.order('date DESC').paginate(:page => params[:page], :per_page => 8)
		if params[:title]
			@projects = Project.search_by_title(params[:title]).order("title desc").paginate(:page => params[:page], :per_page => 10)
		elsif params[:tag]
    		@projects = Project.tagged_with(params[:tag]).order(:date => :desc).paginate(:page => params[:page], :per_page => 10)
		else
			@projects = Project.all.order(:date => :desc).paginate(:page => params[:page], :per_page => 10)
		end
	end

	def featured # featured projects
		@projects = Project.where(:featured => true).order(:date => :desc).paginate(:page => params[:page], :per_page => 10)
		
	end



end
