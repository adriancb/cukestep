# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cukestep/version'

Gem::Specification.new do |spec|
  spec.name          = "cukestep"
  spec.version       = Cukestep::VERSION
  spec.authors       = ["Adrian CB"]
  spec.email         = ["ab.....@gmail.com"]
  spec.summary       = %q{Expose your Gherkin steps to the world.}
  spec.description   = %q{Cukestep exposes your system's Gherkin steps through a Rails Engine.}
  spec.homepage      = "https://github.com/adriancb/cukestep"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "rails"
  spec.add_dependency "cucumber"
  spec.add_dependency "cucumber-rails"
end
