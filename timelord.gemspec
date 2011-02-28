# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "timelord/version"

Gem::Specification.new do |s|
  s.name        = "timelord"
  s.version     = Timelord::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kurtis Rainbolt-Greene"]
  s.email       = ["kurtisrainboltgreene@gmail.com"]
  s.homepage    = "http://github.com/krainboltgreene/timelord"
  s.summary     = %q{Adding the time_ago_in_words method to the Ruby Time class.}
  s.description = %q{Adding the time_ago_in_words method to the Ruby Time class.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
