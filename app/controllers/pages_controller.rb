class PagesController < ApplicationController
<<<<<<< HEAD
	layout 'top'
=======
  skip_before_action :authenticate_user!
>>>>>>> origin/master
  def index
  	resource = User.new
  	render 'devise/sessions/new'
  end

  def show
  end
end
