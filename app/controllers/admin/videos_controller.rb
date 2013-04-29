class Admin::VideosController < ApplicationController

  include AdminModule

  def index
#    @videos = Video.where("pending = 0").all
  end

  def pending
#    @videos = Video.where("pending = 1").all
  end

  def show
#    @video = Video.find(params[:id])
  end

  def update
    # This one depends on whether the edit view stays the same
#    @video = Video.find(params[:id])
    redirect_to admin_video_path(0)
  end

  def destroy
#    @video = Video.find(params[:id])
#    @video.destroy
    redirect_to admin_videos_path
  end
end
