require('pry-byebug')
require_relative('song')
require_relative('guest')


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

