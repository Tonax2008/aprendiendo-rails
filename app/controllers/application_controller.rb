class ApplicationController < ActionController::Base
    before_action :configure_devise_params, if: :devise_controller? 
    before_action :authenticate_user!
   

    def configure_devise_params
        devise_parameter_sanitizer.permit(:sign_up) do |user|
            user.permit(:name,:email, :password, :password_confirmation)
        end
    end

    protected

    def user_validation!
    unless user_signed_in? 
      flash[:danger] = "No tienes autorización para entrar en esa sección"
      redirect_to root_path
    end
  end
end