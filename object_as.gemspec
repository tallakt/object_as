# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'object_as/version'

Gem::Specification.new do |spec|
  spec.name          = "object_as"
  spec.version       = ObjectAs::VERSION
  spec.authors       = ["Tallak Tveide"]
  spec.email         = ["tallak@tveide.net"]
  spec.summary       = %q{Implementation of the Object#as method}
  spec.description   = %q{Object#as is useful for method chaining}
  spec.homepage      = "https://github.com/tallakt/object_as"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
