require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'

class TestGuest < MiniTest::Test

  def setup()
    @guests = {
      "Martin" => Guest.new("Martin", 28, 100, "Clint Eastwood"),
      "Dorah" => Guest.new("Dorah", 33, 50, "Africa"),
      "Catherine" => Guest.new("Catherine", 24, 25, "Somebody Told Me")
    }
  end

  def test_name
    assert_equal("Martin", @guests["Martin"].name)
  end

  def test_age
    assert_equal(33, @guests["Dorah"].age)
  end

  def test_wallet
    assert_equal(100, @guests["Martin"].wallet)
  end

  def test_favourite_song
    assert_equal("Somebody Told Me", @guests["Catherine"].favourite_song)
  end

end
