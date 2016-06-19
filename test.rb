require('pry-byebug')
@guests = []
puts "\n------------"
print "This is the first array\n#{@guests}"
puts "\n------------"

def check_in_guests(*party_of_guests)
  party_of_guests.each { |party_of_guests| @guests <<party_of_guests}
end

check_in_guests("rusty", "frank", "topsy", "tim")

puts "------------"
print "this is the second array\n #{@guests}"
puts "\n------------"

def remove_guest_by_index(customer)
  result = @guests.find_index { | guest, index | guest == customer }
  array = @guests.rotate(-result)
  array.shift()  
  @guests = array
end
  


remove_guest_by_index("topsy")

print "This is the new array\n#{@guests}"