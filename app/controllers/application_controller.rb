class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :configure_permitted_parameters, if: :devise_controller?

 protected 

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]

  end
end
