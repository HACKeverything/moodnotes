class AddPostIdToCommentsLikes < ActiveRecord::Migration
  def change
  	add_reference :comments, :songpost
  	add_reference :likes, :songpost
  end
end
