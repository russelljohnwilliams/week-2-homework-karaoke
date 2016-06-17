require('pry-byebug')
require_relative('karaoke_playlist')
require_relative('karaoke_guest')


class Room

attr_reader(:guests)

  def initialize(name)
    @guests = []
    @songs = []
    @name = name

  end

  def check_in_guest(guest)
    @guests << guest
  end
   


end

