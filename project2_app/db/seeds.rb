# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
katie = User.first

katie.songposts.create(song_title: 'Jordan Belfort', artist: 'Wes Walker', description: "stacking penny stocks while I'm flipping these birds", spotify_url: "spotify:track:6qMXubogFdMrvVMJwqATzd")
