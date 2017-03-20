class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  private

	def after_sign_in_path_for(resource_or_scope)
			capsules_path
	end

	def after_sign_out_path_for(resource_or_scope)
			login_path
	end
  def after_login_top(resource)
  	capsules_path
  end
end
