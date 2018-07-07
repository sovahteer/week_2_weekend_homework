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

  def make_playlist(song)
    @songs[song.name] = song
  end

  def song_count
    return @songs.length
  end
end
