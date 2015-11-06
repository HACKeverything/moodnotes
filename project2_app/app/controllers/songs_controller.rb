class SongsController < ApplicationController
	before_action :authenticate_user!
	def index
   if !params[:song_name].empty?
   	 @songs = RSpotify::Track.search(params[:song_name])
     
   else
     redirect_to root_path
   	end
 	end

 	def show
 		@song = RSpotify::Track.find(params[:id])
 	end


end
