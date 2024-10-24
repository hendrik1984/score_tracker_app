class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def dashboard
    @users = User.all
  end

  private
  def check_admin
    redirect_to root_path, alert: "You are not authorized to access this page." unless current_user.admin?
  end
end
