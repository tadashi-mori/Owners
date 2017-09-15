class LikesController < ApplicationController

  before_action :authenticate_user

  def create
    @like = Like.new(
      user_id: @current_user.id, project_id: params[:project_id])
    @like.save
    redirect_to("/projects/#{params[:project_id]}")
  end

  def destroy
    @like = Like.find_by(user_id: @current_user.id, project_id: params[:project_id])
    @like.destroy
    redirect_to("/projects/#{params[:project_id]}")
  end

end
