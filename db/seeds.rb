require_relative './song_data.rb'

Song.destroy_all

song_data = get_songs()

song_data.each do |song|
  Song.create!({
    songTitle:    song["songTitle"],
    artist:       song["artist"],
    publicId:     song["publicId"],
    internalId:   song["internalId"],
    dateCreated:  song["created_at"],
    dateUpdated:  song["updated_at"]
  })
end
