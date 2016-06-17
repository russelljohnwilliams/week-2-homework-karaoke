require('minitest/autorun')
require_relative('../karaoke_guest.rb')

class TestGuest < Minitest::Test


  def setup
    @guest = Guest.new( "Clarence", 50 )

  end
    
  def test_guest_has_name
    assert_equal( "Clarence", @guest.name() )
  end

  def test_guest_has_money
    assert_equal(50, @guest.wallet())
  end


end