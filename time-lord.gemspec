# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'time-lord/version'

Gem::Specification.new do |gem|
  gem.name          = "time-lord"
  gem.version       = TimeLord::VERSION
  gem.authors       = ["Kurtis Rainbolt-Greene", "Simon Hørup Eskildsen"]
  gem.email         = ["me@kurtisrainboltgreene.name","sirup@sirupsen.com"]
  gem.summary       = %q{Managing concepts of time and space in Ruby}
  gem.description   = gem.summary
  gem.homepage      = "http://krainboltgreene.github.com/time-lord"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'kramdown'
  # gem.add_runtime_dependency 'gemname', '~> 1.0'
  # gem.add_development_dependency 'gemname', '~> 1.0'
end
