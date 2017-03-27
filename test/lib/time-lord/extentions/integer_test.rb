require 'helper'

class TestTimeLordExtentionsInteger < TestCase
  def test_minutes
    expected = 1
    actual = 1.second
    assert_equal(expected, actual)

    expected = 2
    actual = 2.seconds
    assert_equal(expected, actual)
  end

  def test_minutes
    expected = 60
    actual = 1.minute
    assert_equal(expected, actual)

    expected = 120
    actual = 2.minutes
    assert_equal(expected, actual)
  end
end
