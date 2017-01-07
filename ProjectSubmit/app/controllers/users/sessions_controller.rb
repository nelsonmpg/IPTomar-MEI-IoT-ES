class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  after_action :welcome_message, only: :create
  after_action :godbye_message, only: :destroy

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private

    def welcome_message
      flash[:notice] = "Bem Vindo " + current_user.email.split('@')[0] + "!"
    end

    def godbye_message
      flash[:notice] = "Volte sempre !"
    end

end
