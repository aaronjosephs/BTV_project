class Admin::BoardInfosController < ApplicationController

  include AdminModule

  before_filter :check_user

  def show
    @board_info = BoardInfo.find_or_create(@user)
  end

  def update
    if @user.user_roles.empty?
      @role = @user.user_roles.build
      @role.role = "board"
      @role.save!
    end
    @board_info = BoardInfo.find_or_create(@user)
    @board_info.attributes = params[:board_info]
    @board_info.save!
    flash[:notice] = "#{@user.name} board information changed."
    redirect_to admin_user_path(@user)
  end

  def destroy
    flash[:notice] = "#{@user.name} demoted."
    if not @user.user_roles.empty?
      @user.user_roles[0].destroy
    end
    if not @user.board_infos.empty?
      @user.board_infos[0].destroy
      #Delete photo?
    end
    redirect_to admin_user_path(@user)
  end

  protected
  def check_user
    @user = User.find(params[:user_id])
    if not @user
      flash[:warning] = "Could not find user with id #{params[:user_id]}"
      redirect_to admin_users_page
    end
  end
end
