class Songpost < ActiveRecord::Base
	has_many :likes, dependent: :destroy
	has_many :comments, dependent: :destroy
end
