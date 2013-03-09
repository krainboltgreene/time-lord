require 'helper'

class TestTimeLordPeriod < TestCase
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

  def test_from
    expected = 946688401
    actual = 1.hour.from(@timestamp).beginning
    assert_equal(expected, actual)


    expected = 946684801
    actual = 1.hour.from(@timestamp).ending
    assert_equal(expected, actual)
  end

  def test_to
    expected = 946681201
    actual = 1.hour.to(@timestamp).beginning
    assert_equal(expected, actual)

    expected = 946684801
    actual = 1.hour.to(@timestamp).ending
    assert_equal(expected, actual)
  end

  def test_in_words_second
    expected = "1 second ago"
    actual = 1.second.ago.in_words
    assert_equal(expected, actual)
  end

  def test_in_words_plural
    expected = "2 years ago"
    actual = 2.years.ago.in_words
    assert_equal(expected, actual)
  end

  def test_in_words_past_year
    expected = "1 year ago"
    actual = 1.year.ago.in_words
    assert_equal(expected, actual)
  end

  def test_in_words_future_year
    expected = "1 year from now"
    actual = 1.year.from_now.in_words
    assert_equal(expected, actual)
  end

  def test_in_words_between_11_months_and_year
    expected = "11 months from now"
    Timecop.freeze(Time.local(2013, 1, 1))
    actual = Time.local(2013, 12, 3).ago.in_words
    assert_equal(expected, actual)
  end

  def test_math
    expected = Time.now - 2.days
    actual = 2.days.ago.to_time
    assert_equal(expected.to_i, actual.to_i)
  end
end
