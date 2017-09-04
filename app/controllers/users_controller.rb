class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
    redirect_to("/users/#{@user.id}")
    else
    render("users/new")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

end
