class OrdersController < ApplicationController

  def index
  end

  def new
  end

  def create
    redirect_to("projects/index")
  end

end
