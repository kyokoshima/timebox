class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_login_top(resource)
  	root_path
  end
end
