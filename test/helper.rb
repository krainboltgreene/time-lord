require 'coveralls'
Coveralls.wear! do
  add_filter "/test/"
end
require 'minitest/autorun'
require 'timecop'
require 'time-lord'

class TestCase < MiniTest::Unit::TestCase
  def setup
    @timestamp = Time.parse("2000-01-01 00:00:01 -0000")
    Timecop.freeze(@timestamp)
  end

  def teardown
    Timecop.return # undo any time changes
  end
end
