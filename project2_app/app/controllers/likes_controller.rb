class LikesController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:create, :new]
	def new
		@like = Like.new
	end

	def create
		@like = Like.create(like_params)

		redirect_to(:back)
	end

	private

	def like_params
		params.require(:like).permit(:songpost_id, :user_id)
	end


end