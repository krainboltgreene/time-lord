# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'time-lord/version'

Gem::Specification.new do |spec|
  spec.name          = "time-lord"
  spec.version       = TimeLord::VERSION
  spec.authors       = ["Kurtis Rainbolt-Greene", "Simon Hørup Eskildsen"]
  spec.email         = ["me@kurtisrainboltgreene.name","sirup@sirupsen.com"]
  spec.summary       = %q{Managing concepts of time and space in Ruby}
  spec.description   = spec.summary
  spec.homepage      = "http://krainboltgreene.github.com/time-lord"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'kramdown'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'timecop'
  # spec.add_runtime_dependency 'gem', '~> 1.0'
  # spec.add_development_dependency 'gem', '~> 1.0'
end
