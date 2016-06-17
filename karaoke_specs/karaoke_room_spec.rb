require('minitest/autorun')
require_relative('../karaoke_playlist')
require_relative('../karaoke_guest')
require_relative('../karaoke_room')

class TestRoom < Minitest::Test

  def setup

    do_the_strand = Playlist.new("Do the Strand", "Roxy Music")
    angel_eyes = Playlist.new("angel_eyes", "Roxy Music") 
    hit_the_north = Playlist.new("Hit the North", "The Fall")
    a_little_respect = Playlist.new("A Little respect", "Erasure")

    @available_songs = [do_the_strand, angel_eyes, hit_the_north, a_little_respect]

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

end

