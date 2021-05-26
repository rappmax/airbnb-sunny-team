class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :home

  def home
  end
  def configure_permitted_parameters
    devise_
  end

    private

  # Overwriting the sign_out redirect path method
   def after_sign_out_path_for(resource_or_scope)
    root_path
   end

end

