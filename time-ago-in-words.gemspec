# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "time-ago-in-words/version"

Gem::Specification.new do |s|
  s.name        = "time-ago-in-words"
  s.version     = TimeAgoInWords::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kurtis Rainbolt-Greene","Simon Hørup Eskildsen"]
  s.email       = ["kurtisrainboltgreene@gmail.com","sirup@sirupsen.com"]
  s.homepage    = "http://github.com/krainboltgreene/time-ago-in-words"
  s.summary     = %q{Adding various bonuses to the Time class.}
  s.description = %q{
    This gem does two things in one blow:
    * Adds the time_ago_in_words method, like the similarly named method in Rails.
    * Has a set of Constants for time units.

    Examples:
      1. Time.now.ago_in_words # => "0 seconds ago"
      2. Time.parse("1942-04-01").ago_in_words # => "7 decades ago"
  }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
