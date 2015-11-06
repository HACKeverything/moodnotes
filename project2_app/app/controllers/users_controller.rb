class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@posts = @user.songposts
	end
end