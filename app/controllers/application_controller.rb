class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate, :if => proc {Rails.env.production?}

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == auth.username && password == auth.password
    end
  end

  def current_admin_user
  end

  helper_method :current_admin_user

  private

  def auth
    @auth ||= Authentication.new
  end
end
