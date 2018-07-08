require 'minitest/autorun'
require 'minitest/rg'
require_relative '../karaoke_bar'

class TestKaraoke_Bar < MiniTest::Test

  def setup()
    @bar = Karaoke_Bar.new
    @customer = Guest.new("Martin", 28, 100, "Clint Eastwood")
  end

  def test_get_tab
  assert_equal( 0, @bar.get_tab(@customer))
  @bar.update_tab( @customer, 8)
  assert_equal( 8, @bar.get_tab(@customer))
  end

  def test_update_tab
    @bar.update_tab(@customer, 10)
    assert_equal(10, @bar.get_tab(@customer))
    @bar.update_tab(@customer, -7.5) # Customer pays 7.50 off
    assert_equal(2.5, @bar.get_tab(@customer))
  end



end
