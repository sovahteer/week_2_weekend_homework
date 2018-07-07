require_relative 'guests'
require_relative 'songs'

class Room

  def initialize()
    @guests = {}
    @songs = {}
  end

  def check_in(guest)
    @guests[guest.name] = guest
  end

  def guest_count()
    return @guests.length
  end

  def check_out(guest)
    return @guests.delete(guest.name)
  end
  
  def add_songs

  end
end
