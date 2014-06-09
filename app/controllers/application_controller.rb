class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include ApplicationHelper # available to all controllers
  helper_method :current_user # available to all views
  before_filter :require_login

  def require_login
    redirect_to root_path unless current_user
  end
  
end
