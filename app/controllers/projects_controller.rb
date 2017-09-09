class ProjectsController < ApplicationController


  def index
    @projects = Project.all
  end

  def show
    @projects = Project.find_by(id: params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(title: params[:title], producing_area: params[:producing_area], price: params[:price], image: "default_project.jpg")

    @project.save
    redirect_to("/projects")
  end

end
