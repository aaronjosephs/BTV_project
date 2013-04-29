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
    redirect_to admin_video_path(params[:id])
  end

  def approve
#    @video = Video.find(params[:id])
#    if (@video.pending = 1)
#      @video.pending = 0
#      #Send email to author that their video was approved.
#    else
#      @video.pending = 1
#      #Send email to author saying that their video was moved deapproved.
#    end
    redirect_to admin_video_path(params[:id])
  end

  def destroy
#    @video = Video.find(params[:id])
#    if @video.pending = 1
#      #Send email to author saying that their video was denied.
#    end
#    @video.destroy
    redirect_to admin_videos_path
  end
end
