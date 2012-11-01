class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login

  helper_method :current_user, :current_user_session

  def current_user_session
    return @current_user_session if @current_user_session
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if @current_user
    @current_user = current_user_session && current_user_session.record
  end

  def require_login
    unless current_user
      flash[:error] = "Please login first."
      redirect_to login_url
    end
  end

  def require_not_login
    if current_user
      flash[:error] = "You're already logged in."
      redirect_to request.env["HTTP_REFERER"] || root_url
    end
  end

end
