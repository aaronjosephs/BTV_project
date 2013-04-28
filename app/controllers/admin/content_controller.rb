module Admin; end
class Admin::ContentController < ApplicationController

  include AdminModule

  def index
    @admin = true
    if @admin
    else
      redirect_to :controller => "/home", :action => "index"
    end
  end

  def show_users
    @users = User.find(:all)
  end

  def create_user
    @user = User.new(params[:user])
    if @user.save
      redirect_to :controller => "admin/content", :action => "show_users", notice: 'User was successfully created'
    else
      render action: "create_user"
    end
  end

  def edit_user
    @user = User.find_by_id(params[:id])
    if params[:user]
      if @user.update_attributes(params[:user])
        redirect_to :controller => "admin/content", :action => "show_users"
      end
    end
  end

  def delete_user
    @user = User.find_by_id(params[:id])
    
  end

  def show_users_videos
  end

  def show_video
    #@video = Video.find(params[:id])
  end

  def show_pending_videos
  end

end
