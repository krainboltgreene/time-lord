require 'helper'

class TestTimeLordTime < MiniTest::Unit::TestCase
  def setup
    @timestamp = Time.now
  end

  def test_to_words_past_seconds
    expected = "50 seconds ago"
    actual = TimeLord::Time.new(@timestamp - 50).period.to_words
    assert_equal(expected, actual)
  end

  def test_to_words_singular
    expected = "1 minute ago"
    actual = TimeLord::Time.new(@timestamp - 60).period.to_words
    assert_equal(expected, actual)
  end

  def test_to_words_future_days
    expected = "2 days ago"
    actual = TimeLord::Time.new(@timestamp - 172800).period.to_words
    assert_equal(expected, actual)
  end

  def test_to_words_future_days
    expected = "2 days from now"
    actual = TimeLord::Time.new(@timestamp + 172800).period.to_words
    assert_equal(expected, actual)
  end
end
