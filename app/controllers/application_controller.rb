class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :is_admin?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_admin?
    current_user && current_user.admin?
  end

end
