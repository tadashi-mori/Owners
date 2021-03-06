class UsersController < ApplicationController

  before_action :authenticate_user, {only: [:index, :show, :edit, :update]}
  before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}
  before_action :ensure_corrent_user, {only: [:edit, :update]}

  def index
  end

  def show
    @user = User.find_by(id: params[:id])
    @project = Project.find(params[:id])
    @projects = @current_user.projects

  end

  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password], image_name: "default_user.jpg")
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}")
    else
      render("/")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end

    if @user.save
      redirect_to("/users/#{@user.id}")
    else
      render("/users/edit")
    end
  end

  def login_form

  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}")
    else
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/")
  end

  def ensure_corrent_user
    if @current_user.id != params[:id].to_i
      redirect_to("/users/#{@current_user.id}")
    end
  end

end
