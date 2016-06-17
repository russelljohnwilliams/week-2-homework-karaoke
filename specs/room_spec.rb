require('minitest/autorun')
require_relative('../guest')
require_relative('../room')

class TestRoom < Minitest::Test

  def setup

    @a_little_respect = Song.new("A Little respect", "Erasure")

    @grace = Guest.new("Grace", 750)
    @horatio = Guest.new("Horatio", 350)

    @room = Room.new( "gold rooms" )
  
  end


  def test_amount_of_guests_when_room_empty
    assert_equal(0, @room.guests.length)
  end

  def test_amount_of_guests
    @room.check_in_guest(@grace)
    assert_equal(1, @room.guests.length)
  end

  def_check_out_a_customer <<<<<<<<<<<<<<<<<<<< HERE I AM


  def test_amount_of_songs_when_empty
    assert_equal(0, @room.songs.length)
  end

  def test_amount_of_songs
    @room.add_a_song(@a_little_respect)
    assert_equal(1, @room.songs.length)
  end

end

