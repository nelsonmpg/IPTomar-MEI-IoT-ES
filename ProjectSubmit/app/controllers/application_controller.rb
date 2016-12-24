class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #autenticação do user antes de entrar.....
  #before_action :authenticate_user!

  before_action only: [:index, :show, :new, :edit] do  
  	@sb_schools = School.all
  	@sb_courses = Course.all
  	#@sb_tags = Tags.all
  end

end
