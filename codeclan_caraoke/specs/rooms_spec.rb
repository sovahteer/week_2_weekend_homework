require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'

class TestRoom < MiniTest::Test

def setup()
  @Martin = Guest.new("Martin", 28, 100, "Clint Eastwood")
  @Dorah = Guest.new("Dorah", 33, 50, "Africa")
  @Catherine = Guest.new("Catherine", 24, 25, "Somebody Told Me")
  @Matt = Guest.new("Matt", 30, 10, "Sovngarde")
end

def test_check_in
  @room1.check_in(@Martin)
  assert_equal(1, @room1.guest_count)
end

def test_check_out
@room1.check_out(@Martin)
assert_equal(0, @room1.guest_count)
end

def test_make_playlist
  @room1.make_playlist(Song.new("Clint Eastwood", "Gorillaz"))
  assert_equal(1, @room1.song_count)
end

def test_check_room_full
  @room1.check_in(@Martin)
  @room1.check_in(@Dorah)
  @room1.check_in(@Catherine)
  result = @room1.check_in(@Matt)
  assert_equal(3, @room1.guest_count)
  assert_equal("Room is full", result)
end

end
