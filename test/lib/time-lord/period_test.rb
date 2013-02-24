require 'minitest/autorun'
require 'helper'

class TestTimeLordPeriod < MiniTest::Unit::TestCase
  def setup
    @timestamp = Time.now
  end

  def test_to_i_positive
    expected = -100
    actual = TimeLord::Period.new(@timestamp - 100, @timestamp).difference
    assert_equal(expected, actual)
  end

  def test_to_i_negative
    expected = 100
    actual = TimeLord::Period.new(@timestamp + 100, @timestamp).difference
    assert_equal(expected, actual)
  end
end
