

class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery with: :exception
<<<<<<< HEAD

  protected

  def layout_by_resource
    if devise_controller?
      "top"
    else
      "application"
    end
  end

=======
  before_action :authenticate_user!
>>>>>>> origin/master
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
