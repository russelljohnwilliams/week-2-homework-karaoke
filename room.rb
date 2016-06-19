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

#used splat method as covered in "codecademy", hope I'm not breaking any rules as its not been covered in CodeClan?

  def check_in_party_of_guests(*party_of_guests)
    party_of_guests.each { |party_of_guests| @guests <<party_of_guests}
  end
    
   

 

  def check_out_a_guest_by_index(customer)
    #find the guest index number
    result = @guests.find_index { | guest, index | guest == customer }
    #rotate backwards to beggining of array
    array = @guests.rotate(-result)
    #.shift to remove the badboy (or girl)
    array.shift()
    @guests = array  
  end
       

 def add_a_song(guest, song)
   hash = {}
   hash["name"] = "guest"
   hash["song"] = "song"
   @songs.push hash
 end

 def add_number_of_songs_sung_to_customer()
  #search @songs by customer name
  #count number of songs sung
  #add number to customer songbook

  #--------- or ---------

  #search @ songs by customer name
  #add the song titles to customer songbook
  # find amount by .length
 end


end

