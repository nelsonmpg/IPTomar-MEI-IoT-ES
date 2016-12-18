class HomeController < ApplicationController
  include ProjectsHelper
  include SchoolsHelper
  include CoursesHelper

  def index
    @projects = allProjects
    @schools = allSchools
    #@schools = ["dawd", "wdawdaw", "wdadawd", "wdawdd"]
    @courses = allCourses
  end



end
