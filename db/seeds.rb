require_relative './song_data.rb'

Song.destroy_all

song_data = get_songs()

song_data.each do |song|
  Song.create!({
    songTitle:    song["songTitle"],
    artist:       song["artist"],
    publicId:     song["publicId"]
  })
end
