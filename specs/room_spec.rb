require('minitest/autorun')
require_relative('../guest')
require_relative('../room')

class TestRoom < Minitest::Test

  def setup

    @a_little_respect = Song.new("A Little respect", "Erasure")

    @grace = Guest.new("Grace", 750)
    @horatio = Guest.new("Horatio", 350)
    @topsy = Guest.new("Topsy", 250)
    @tim = Guest.new("tim", 50)

    # @songs_sung = [
    #   {:name => "jo", :song => "relax"}, 
    #   {:name => "jo", :song => "pipes_of_peace"}, 
    #   {:name => "fritz", :song => "panic"}
    # ]

    @room = Room.new( "Franks wild room" )
  
  end


  def test_amount_of_guests_when_room_empty
    assert_equal(0, @room.guests.length)
  end

  def test_amount_of_guests
    @room.check_in_guest(@grace)
    assert_equal(1, @room.guests.length)
  end

  def test_for_a_party_of_guests
    @room.check_in_party_of_guests(@grace, @horatio)
    assert_equal(2, @room.guests.length)
  end

  # def test_check_out_a_guest_by_index
  #   #I tried writing a test for this but I don't know what to put, I know the method works though.
  # end

  def test_amount_of_songs_when_empty
    assert_equal(0, @room.songs.length)
  end

  def test_add_a_song
    @room.add_a_song(@topsy, @a_little_respect)
    assert_equal(1, @room.songs.length)
  end

#again, spending too long trying to write a test.
  # def test_number_of_songs_guest_has_sung
  #   @songs_sung
  #   @room.test_number_of_songs_guest_has_sung("jo")
  #   assert_equal(2)
  # end


end

