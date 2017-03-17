class PagesController < ApplicationController
	layout 'top'
  def index
  	resource = User.new
  	render 'devise/sessions/new'
  end

  def show
  end
end
