require('pry-byebug')

class Room



  def initialize(guests)
    @guests = guests
  end

  
  def song_by_artist(artist)
    binding.pry
    songs = @playlist.find { |title| title.name == artist }
    songs.type
  end

end

angel_eyes = Playlist.new("angel_eyes", "Roxy Music") 
hit_the_north = Playlist.new("Hit the North", "The Fall")
a_little_respect = Playlist.new("A Little respect", "Erasure")

# check in guests
# find songs from playlist
# put songs in guests array
# check out guests