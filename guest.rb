
require_relative('song')

require('pry-byebug')

class Guest

attr_reader(:name)
attr_accessor(:wallet, :songs_sung)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @songs_sung = []
  end

  def test_bear_can_take_food_from_river
    @bear.take_fish_from_river( @river )
    assert_equal( 1, @bear.food_count() )
  end

  # def test_number_of_songs_guest_has_sung
  #   @guest.number_of_songs_guest_has_sung( @room )
  #   assert_equal(1, @)
  # end

end