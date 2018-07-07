require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'

class TestRoom < MiniTest::Test

def setup()
  @room1 = Room.new()
  @room2 = Room.new()
  @room3 = Room.new()
end

def test_check_in
  @room1.check_in(Guest.new("Martin", 28, "Clint Eastwood"))
  assert_equal(1, @room1.guest_count)
end

def test_check_out
@room1.check_out(Guest.new("Martin", 28, "Clint Eastwood"))
assert_equal(0, @room1.guest_count)
end

def test_make_playlist
  @room1.make_playlist(Song.new("Clint Eastwood", "Gorillaz"))
  assert_equal(1, @room1.song_count)
end

end
