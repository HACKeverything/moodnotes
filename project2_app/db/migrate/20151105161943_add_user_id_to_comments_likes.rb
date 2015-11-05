class AddUserIdToCommentsLikes < ActiveRecord::Migration
  def change
  	add_reference :comments, :user
  	add_reference :likes, :user
  end
end
