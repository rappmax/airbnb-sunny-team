class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :home

  def home
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :style, :hand])
  end
end
