class SessionsController < ApplicationController
  def new
  	@login_active = "active"
  end

def create
	@login_active = "active"
	auth_hash = request.env['omniauth.auth']
	@authentication = Authentication.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
	if @authentication
		render :text => "Welcome back #{@authentication.user.name}! You have already signed up."
	else
		user = User.new :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
		user.authentications.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
		user.save
    		render :text => "Hi #{user.name}! You've signed up."
	end
end


  def failure
  	@login_active = "active"
  redirect_to login_path, alert: "Authentication failed, please try again."
  end

end
