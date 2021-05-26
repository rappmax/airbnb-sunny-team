class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :home

  def home
  end
  # def configure_permitted_parameters
  #   devise_
  # end
end

