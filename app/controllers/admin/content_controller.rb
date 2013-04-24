module Admin; end
class Admin::ContentController < ApplicationController
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

  def edit_user
    @user = User.find_by_id(params[:id])
    flash[:notice] = params.inspect()
    if params[:user]
      if @user.update_attributes(params[:user])
        redirect_to :controller => "admin/content", :action => "show_users"
      end
    end
  end

  def show_requests
  end
end
