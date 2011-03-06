require 'minitest/spec'
require 'minitest/autorun'
require 'timecop'
require File.expand_path(File.dirname(__FILE__) + '/../lib/time-ago-in-words.rb')

Second = 1
Minute = Second * 60
Hour   = Minute * 60
Day    = Hour   * 24
Week   = Day    * 7
Month  = Week   * 4
Year   = Day    * 365
Decade = Year   * 10
