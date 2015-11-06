class LikesController < ApplicationController
	before_action :authenticate_user!
	skip_before_action :verify_authenticity_token, only: [:create, :new, :destroy]
	def new
		@like = Like.new
	end

	def create
		@like = Like.create(like_params)

		redirect_to(:back)
	end


	def destroy
		@songpost = Songpost.find(params[:songpost_id])
		@like = @songpost.likes.find(params[:id])
		@like.destroy
		redirect_to(:back)
	end

	private

	def like_params
		params.require(:like).permit(:songpost_id, :user_id)
	end


end