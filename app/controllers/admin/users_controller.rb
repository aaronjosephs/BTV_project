class Admin::UsersController < ApplicationController

  include AdminModule

  def index
#    @users = User.find(:all)
  end

  def show
#    @user = User.find_by_id(params[:id])
  end

  def update
    # Depends on whether the view implementation is used.
#    @user = User.find(params[:id])
    redirect_to admin_user_path(0)
  end

  def destroy
#    @user = User.find_by_id(params[:id])
#    @user.delete!
    redirect_to admin_users_path
  end
end
