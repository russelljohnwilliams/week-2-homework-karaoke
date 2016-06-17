require('pry-byebug')
require_relative('karaoke_playlist')

class Room < Playlist

  def initialize(guests)
    @guests = guests
  end

  
  # def song_by_artist(artist)
  #   binding.pry
  #   songs = @playlist.find { |title| title.name == artist }
  #   songs.type
  # end

end


# check in guests
# find songs from playlist
# put songs in guests array
# check out guests