class ProjectsController < ApplicationController


  def index
    @projects = Project.all
  end

  def show
    @projects = Project.find_by(id: params[:id])
  end

  def new
  end

  def create
    redirect_to("/projects/index")
  end

end
