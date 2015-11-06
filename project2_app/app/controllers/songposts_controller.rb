class SongpostsController < ApplicationController
	before_action :authenticate_user!, except: :index
	before_action :set_songpost, only: [:show, :edit, :update, :destroy]
	skip_before_action :verify_authenticity_token, only: [:create, :new]
	require 'rspotify'
	def index
		@songposts = Songpost.last(10).reverse
		# most recent 10 posts

		@users = User.all
		
	end

	def create
		@songpost = current_user.songposts.create(songpost_params)
		redirect_to songposts_path
	end

	def new
		@songpost = Songpost.new
		
	end

	def show
		@users = User.all
		@likes = @songpost.likes
		@comments = @songpost.comments
		@current_user_id = current_user.id
	end

	def edit
	end

	def update
		@songpost.update_attributes(songpost_params)
		redirect_to songpost_path(@songpost.id)
	end

	def destroy
		@songpost.destroy
		redirect_to songposts_path
	end

	private

	def set_songpost
		@songpost = Songpost.find(params[:id])
	end

	def songpost_params
		params.require(:songpost).permit(:artist, :song_title, :description, :spotify_url)
	end

end
