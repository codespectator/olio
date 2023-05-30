class ApplicationController < ActionController::Base
  def current_user
    cookies[:user] ||= SecureRandom.uuid
    cookies[:user]
  end
  helper_method :current_user
end
