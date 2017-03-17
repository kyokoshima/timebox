

class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery with: :exception

  protected

  def layout_by_resource
    if devise_controller?
      "layout_name_for_devise"
    else
      "application"
    end
  end
end
