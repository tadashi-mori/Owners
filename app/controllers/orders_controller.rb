class OrdersController < ApplicationController

  def index
  end

  def new
  end

  def create
    @order = Order.new(user_id: @current_user.id, project_id: params[:project_id])
    @order.save
    redirect_to("/users/#{@current_user.id}")
  end

end
