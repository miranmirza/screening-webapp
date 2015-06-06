class ApplicationController < ActionController::Base
  before_action :authorize!
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize!
    if current_user.nil?
      redirect_to login_path
    elsif current_user.guest?
      redirect_to thanks_path
    end
  end
end
