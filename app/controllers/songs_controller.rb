class SongsController < ApplicationController

  def index
    @songs = Song.all.order(:artist)
  end

  def songbook
    @songs = Song.all.order(:artist)
  end

  private
  # def song_params
  #   params.require(:songTitle, :artist).permit(:publicId)
  # end

end
