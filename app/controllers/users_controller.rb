class UsersController < ApplicationController
	load_and_authorize_resource
	
	def index
		
	end

	def edit
		@user = User.find(current_user.id)
	end

	def update
		@user = User.find(params[:id])
		respond_to do |format|
			if @user.update(user_params)
				format.js {render 'update'}
			else
				format.js {render 'update_error'}
			end
		end
	end

	private
		def user_params
			params.require(:user).permit(:firstname, :lastname, :nickname, :birthdate, :gender)
		end
end
