class CommentsController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:create, :new]
	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create(comment_params)

		redirect_to(:back)
	end

	private

	def comment_params
		params.require(:comment).permit(:songpost_id, :user_id, :content)
	end

end