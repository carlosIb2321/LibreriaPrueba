class ApplicationController < ActionController::Base
   before_action :configure_devise_params, if: :devise_controller?

   def configure_devise_params
      devise_parameter_sanitizer.permit(:sign_up) do |user|
        user.permit(:name, :email, :password, :password_confirmation)
      end
    end
    def after_sign_out_path_for( resource_or_scope)
        new_user_session_path
     end
end
