# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peace/version'

Gem::Specification.new do |spec|
  spec.name          = "peace"
  spec.version       = Peace::VERSION
  spec.authors       = ["Nick Pachulski"]
  spec.email         = ["nick@pachulski.me"]

  spec.summary       = "Continuous integration for RubyMotion applications."
  spec.homepage      = "https://github.com/pachun/peace"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
