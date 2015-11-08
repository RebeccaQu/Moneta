class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  after_filter :prepare_unobtrusive_flash

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def ensure_logged_in
    unless current_user
      redirect_to new_session_url, alert: "you need to be logged in to view this page"
    end
  end

  helper_method :current_user
end
