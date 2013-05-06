class Admin::UsersController < ApplicationController

  include AdminModule

  def index
    @users = User.find(:all)
  end

  def show
    @user = User.find(params[:id])
    @description = "#{@user.name} is currently #{@user.description}."
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully edited user"
    else
      flash[:warning] = "Failed to edit user"
    end
    redirect_to admin_user_path(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete!
    redirect_to admin_users_path
  end
end
