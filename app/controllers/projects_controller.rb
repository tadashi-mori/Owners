class ProjectsController < ApplicationController


  def index
    @projects = Project.all
    @project = Project.find_by(id: params[:id])
  end

  def show
    @project = Project.find_by(id: params[:id])
    @user = @project.users
    @likes_count = Like.where(project_id: @project.id).count
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(title: params[:title], producing_area: params[:producing_area], price: params[:price])

    if params[:image]
      @project.image = "#{@project.id}.jpg"
      image = params[:image]
      File.binwrite("public/project_images/#{@project.image}", image.read)
    end

    @project.save
    redirect_to("/projects")
  end

end
