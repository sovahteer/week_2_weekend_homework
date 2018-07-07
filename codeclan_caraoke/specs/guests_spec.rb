require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Martin", 28, "Clint Eastwood")
    @guest2 = Guest.new("Dorah", 33, "Africa")
    @guest3 = Guest.new("Catherine", 24, "Somebody Told Me")
  end

end
