module Admin; end
class Admin::ContentController < ApplicationController

  #An Admin must be logged in for this controller to do anything.
  before_filter :admin_logged_in

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

  protected
  def admin_logged_in
    # Assume an admin is logged in for now, pending
    # completion of the user system.
    #
    # This method should check that an admin is logged in
    # (probably by checking the session hash for an id and
    # querying the user database) and redirect to a login page
    # or the home page if noone's logged in or a non-admin
    # is logged in.
  end

end
