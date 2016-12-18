class HomeController < ApplicationController
  include ProjectsHelper
  include SchoolsHelper

  def index
    @projects = allProjects
    @schools = allSchools
  end



end
