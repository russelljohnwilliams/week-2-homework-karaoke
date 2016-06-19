require('minitest/autorun')
require_relative('../song.rb')
require_relative('../room')
require_relative('../guest')

class TestSong < Minitest::Test

  def setup
    do_the_strand = Song.new("Do the Strand", "Roxy Music")
    angel_eyes = Song.new("angel_eyes", "Roxy Music") 
    hit_the_north = Song.new("Hit the North", "The Fall")
    a_little_respect = Song.new("A Little respect", "Erasure")

  end

  def test_playlist_has_artist()
    assert_equal("Roxy Music", angel_eyes.artist)
  end

  def test_playlist_has_song_title
    assert_equal("Hit the North", hit_the_north.song_title)
  end

end