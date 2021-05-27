class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :home
  before_action :configure_permitted_parameters, if: :devise_controller?

  def home
  end


  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :style, :hand, :picture])
  end

   def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :style, :hand, :picture, :picture_cache, :remove_picture])
    end
end
