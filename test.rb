require('pry-byebug')
# @guests = []
# puts "\n------------"
# print "This is the first array\n#{@guests}"
# puts "\n------------"

# def check_in_guests(*party_of_guests)
#   party_of_guests.each { |party_of_guests| @guests <<party_of_guests}
# end

# check_in_guests("rusty", "frank", "topsy", "tim")

# puts "------------"
# print "this is the second array\n #{@guests}"
# puts "\n------------"

# def remove_guest_by_index(customer)
#   result = @guests.find_index { | guest, index | guest == customer }
#   array = @guests.rotate(-result)
#   array.shift()  
#   @guests = array
# end
  


# remove_guest_by_index("topsy")

# print "This is the new array\n#{@guests}"

@songs = []

# def add_a_song(guest, song)
#   hash = {}
#   hash["guest"] = "song"
#   @songs << hash
# end

def add_a_song(guest, song)
  hash = {}
  hash["name"] = guest
  hash["song"] = song
  @songs.push hash
end

add_a_song("topsy", "mr pharmacist")

print @songs
# @array = [{:deb => "song1"}, {:deb => "song2"}, {:fritz => "nothing"}]



# def pets_by_breed(name)
#   # binding.pry
#   result = []
#     for song in @array
#       if 
#         :key == name
#         result.push song
#       end
#     end
#   print result
# end


# pets_by_breed(:deb)









# def song(name)
# result = @array.each{|key, value| key == name}
# print result
# end

# def pets_by_breed(pet_shop, breed)
#   matches = []
#   for pet in pets_in_stock(pet_shop)
#     matches << pet if(pet[:breed] == breed)
#   end
#   return matches
# end










