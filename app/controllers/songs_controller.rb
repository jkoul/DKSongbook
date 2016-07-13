class SongsController < ApplicationController

  def songbook
    @songs = Song.all.order(:artist)
  end

  private
  def song_params
    params.require(:songTitle, :artist).permit(:publicId)
  end

end
