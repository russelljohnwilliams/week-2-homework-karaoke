require('pry-byebug')
  # methods

# check guest(class) into room (array)

# search playlist(class) by artist
# return array


# search playlist(class) by songs
# return array


# shovel hash into guest(class) array (guest take hash into its array?)


# check out of room












def song_by_artist(artist)
  songs = @playlist.find { |title| title.name == artist }
  songs.type

  puts songs
end










#   @playlist = [
#   {
#     artist: "Roxy Music",
#     album: "For Your Pleasure",
#     song: "Do the Strand"
#   }, 
#   {
#     artist: "Roxy Music",
#     album: "Manifesto",
#     song: "Angel Eyes"
#   }, 
#   { 
#     artist: "The Fall",
#     album: "Frenz Experiment",
#     song: "Hit the North"
#   }, 
#   {
#     artist: "Erasure",
#     album: "Innocents",
#     song: "A Little Respect"
#   } 
# ]



  # def find_artist_in_playlist(artist)
  #   # binding.pry
  # artists = @playlist.select{ |value| value[:artist] == artist }
  # puts artists
  # end

  # find_artist_in_playlist("Roxy Music")



