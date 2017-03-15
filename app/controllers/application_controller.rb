class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private

	def after_sing_in_path_for
			capsules_path
	end

	def after_sign_out_path_for
			new_user_session_path
	end
  def after_login_top(resource)
  	root_path
  end
end
