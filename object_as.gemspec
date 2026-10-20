require_relative "lib/object_as/version"

Gem::Specification.new do |spec|
  spec.name          = "object_as"
  spec.version       = ObjectAs::VERSION
  spec.authors       = ["Tallak Tveide"]
  spec.email         = ["tallak@tveide.net"]
  spec.summary       = %q{Implementation of the Object#as method}
  spec.description   = %q{Object#as is useful for method chaining}
  spec.homepage      = "https://github.com/tallakt/object_as"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files         = Dir["lib/**/*.rb", "README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]
end
