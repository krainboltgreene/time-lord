# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "time-lord/version"

Gem::Specification.new do |s|
  s.name        = "time-lord"
  s.version     = TimeLord::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kurtis Rainbolt-Greene","Simon Hørup Eskildsen"]
  s.email       = ["kurtisrainboltgreene@gmail.com","sirup@sirupsen.com"]
  s.homepage    = "http://github.com/krainboltgreene/time-lord#README"
  s.summary     = %q{Adding various bonuses to the Time class.}
  s.description = %q{This is a gem that adds a ton of extras to the Time class.}


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
end
