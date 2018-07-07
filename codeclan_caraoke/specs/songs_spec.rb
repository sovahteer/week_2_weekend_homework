require 'minitest/autorun'
require 'minitest/rg'
require_relative '../songs'

class TestSong < MiniTest::Test

  def setup()
    @songs = {
      "Clint Eastwood" => Song.new("Clint Eastwood", "Gorillaz"),
      "More than a Feeling" => Song.new("More than a Feeling", "Boston"),
      "Best of You" => Song.new("Best of You", "Foo Fighters"),
      "Stairway to Heaven" => Song.new("Stairway to Heaven", "Led Zepplin"),
      "Seven Seas of Rye" => Song.new("Seven Seas of Rye", "Queen")
    }
  end

  def test_name
    assert_equal("More than a Feeling", @songs["More than a Feeling"].name)
  end

  def test_artist
    assert_equal("Foo Fighters", @songs["Best of You"].artist)
  end

end
