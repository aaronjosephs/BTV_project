module Admin; end
class Admin::ContentController < ApplicationController

  #See lib/admin_module.rb
  include AdminModule

  def index
    @admin = true
    if @admin
    else
      redirect_to :controller => "/home", :action => "index"
    end
  end

end
