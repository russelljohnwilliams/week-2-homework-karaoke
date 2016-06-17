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

    @room = Room.new()
  end

  def test_playlist_has_artist
    playlist = Playlist.new("Do the Strand", "Roxy Music")
    assert_equal("Roxy Music", playlist.artist)
  end

  def test_amount_of_guests_when_room_empty
    assert_equal([nil], @room.check_in_guest())
  end


end

