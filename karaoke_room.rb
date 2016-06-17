require('pry-byebug')
require_relative('karaoke_playlist')
require_relative('karaoke_guest')


class Room < Playlist

  def initialize()
    @room = []
  end

  def check_in_guest()
    @room << @guest
  end
   
end

