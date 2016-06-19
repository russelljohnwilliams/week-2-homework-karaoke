require('pry-byebug')
require_relative('song')
require_relative('guest')

class Room

attr_reader(:guests, :songs)

  def initialize(name)
    @guests = []
    @songs= []
    @name = name
  end

  def check_in_guest(guest)
    @guests << guest
  end

  #used splat method as covered in "codecademy", hope I'm not breaking any rules since its not been covered yet

  def check_in_party_of_guests(*party_of_guests)
    party_of_guests.each { |party_of_guests| @guests <<party_of_guests}
  end

  #find the guest index number
  #rotate backwards to beggining of array
  #.shift to remove the badboy (or girl)
  def check_out_a_guest_by_index(customer)
    result = @guests.find_index { | guest, index | guest == customer }
    array = @guests.rotate(-result)
    array.shift()
    @guests = array  
  end
     
  def add_a_song(guest, song)
    hash = {}
    hash["name"] = "guest"
    hash["song"] = "song"
    @songs.push hash
  end
 
 #search @ songs by customer name
 # find amount by .length
 #add amount to customer songbook (need to do this still)

 def number_of_songs_guest_has_sung(name)
    result = []
    for song in @array
      if song[:name] == name
      result.push song
      end
    end
    @number_of_songs = result.length
  end

 end


