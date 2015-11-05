class SongpostsController < ApplicationController
	before_action :set_songpost, only: :show
	def index
		@songposts = Songpost.last(10).reverse
		# most recent 10 posts

		@users = User.all
	end

	def show

	end

	def set_songpost
		@songpost = Songpost.find(params[:id])
	end
end
