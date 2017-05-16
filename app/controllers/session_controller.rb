class SessionController < ApplicationController

  def create
  	if is_login?
  		redirect_to :controller => 'site', :action => 'index'
  	else
	  	render :layout => false
	 end
  end

  def logout
    log_out
    redirect_to root_url
  end

  def updateprofile
    @user = User.find_by_id(current_user.id)
  end

  def editprofile
    render plain: 'FUCKER'
  end

  def authenticate
  	user = User.where('username = ? AND password = ?', params[:session][:email], Digest::SHA1.hexdigest(params[:session][:password])).first
  	if !user.nil?
  		login user.id
  		redirect_to :controller => 'courses', :action => 'index'
  	else
  		flash[:danger] = 'Login failed, please try again with valid information'
  		redirect_to :action => 'create'
  	end
  end
end
