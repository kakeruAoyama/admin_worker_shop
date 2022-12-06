class WorkersController < ApplicationController
  def index
    authenticate_admin!
    @workers = Worker.joins(:shop).all
  end

  def new 
    authenticate_admin!
    @worker = Worker.new
  end

  def create 
    authenticate_admin!
    Worker.create!(worker_params)
    redirect_to workers_path
  end

  def show
    authenticate_worker!
    @worker = current_worker
  end

  private
  def worker_params
    params.require(:worker).permit(:name, :password, :email, :shop_id)
  end
end
