class AddUserIdToSongposts < ActiveRecord::Migration
  def change
  	add_reference :songposts, :user
  end
end
