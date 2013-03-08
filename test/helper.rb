require 'coveralls'
Coveralls.wear! do
  add_filter "/test/"
end
require 'minitest/autorun'
require 'timecop'
require 'time-lord'
