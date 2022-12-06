class WorkersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @workers = Worker.joins(:shop).all
  end
end
