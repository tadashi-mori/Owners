class ProjectsController < ApplicationController


  def index
    @current_user = User.find_by(id: session[:user_id])
  end

  def show
  end

  def new
  end

end
