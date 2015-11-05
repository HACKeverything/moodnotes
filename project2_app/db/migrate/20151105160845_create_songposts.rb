class CreateSongposts < ActiveRecord::Migration
  def change
    create_table :songposts do |t|
      t.text :song_title
      t.text :artist
      t.text :description
      t.text :spotify_url

      t.timestamps null: false
    end
  end
end
