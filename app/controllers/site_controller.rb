class SiteController < ApplicationController
  def index
  	if is_login?
  		
  	else 
  		redirect_to :controller => 'session', :action => 'create'
  	end
  end
end
