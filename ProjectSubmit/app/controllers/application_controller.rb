class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #autenticação do user antes de entrar.....
  #before_action :authenticate_user!
end
