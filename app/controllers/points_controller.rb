class PointsController < ApplicationController
  def index
    @users = User.all
  end
end
