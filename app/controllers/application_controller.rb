class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  include SessionsHelper

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
end
