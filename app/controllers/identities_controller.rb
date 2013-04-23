class IdentitiesController < ApplicationController
  def new
    @identity = session[:identity] || Identity.new
  end
  def failure
  redirect_to login_path, alert: "Authentication failed, please try again."
  end
end
