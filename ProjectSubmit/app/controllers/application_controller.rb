class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #autenticação do user antes de entrar.....
  #before_action :authenticate_user!

after_action :welcome_message, only: :create
after_action :godbye_message, only: :destroy


  before_action only: [:index, :show, :new, :edit] do  
  	@sb_schools = School.all
  	@sb_courses = Course.all
  	@sb_tags = Tag.all
  end

   private

   def welcome_message
     flash[:notice] = "Bem Vindo " + current_user.email.split('@')[0] + "!"
   end

   def godbye_message
   	flash[:notice] = "Volte sempre !"
   end
end
