require('minitest/autorun')
require_relative('../karaoke_playlist.rb')
require_relative('../karaoke_room')
require_relative('../karaoke_guest')

class Testplaylist < Minitest::Test

  def test_playlist_has_artist
    playlist = Playlist.new("Do the Strand", "Roxy Music")
    assert_equal("Roxy Music", playlist.artist)
  end

  def test_playlist_has_song_title
    playlist = Playlist.new("Do the Strand", "Roxy Music")
    assert_equal("Do the Strand", playlist.song_title)
  end

end