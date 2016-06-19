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

  

    @room = Room.new( "gold rooms" )
  
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

  def test_amount_of_songs
    @room.add_a_song(@topsy, @a_little_respect)
    assert_equal(1, @room.songs.length)
  end



end

