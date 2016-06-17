require('minitest/autorun')
require_relative('../karaoke_room.rb')

class TestRoom < Minitest::Test


  def test_find_songs_by_artist
     assert_equal(:title, song_by_artist())
  end

end
