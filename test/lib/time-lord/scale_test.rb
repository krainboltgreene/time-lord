require 'helper'

class TestTimeLordScale < TestCase
  def test_to_value_single
    expected = 1
    actual = TimeLord::Scale.new(3600).to_value
    assert_equal(expected, actual)
  end

  def test_to_value_multiple
    expected = 2
    actual = TimeLord::Scale.new(7200).to_value
    assert_equal(expected, actual)
  end

  def test_to_unit_second_single
    expected = "second"
    actual = TimeLord::Scale.new(1).to_unit
    assert_equal(expected, actual)
  end

  def test_to_unit_single
    expected = "hour"
    actual = TimeLord::Scale.new(3600).to_unit
    assert_equal(expected, actual)
  end

  def test_to_unit_multiple
    expected = "hours"
    actual = TimeLord::Scale.new(7200).to_unit
    assert_equal(expected, actual)
  end
end
