require 'rubygems'
require 'json'

def get_songs
  songs = File.read('db/DKSongList.json')
  return JSON.parse(songs)
end
