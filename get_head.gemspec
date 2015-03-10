# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'get_head/version'

Gem::Specification.new do |spec|
  spec.name          = "get_head"
  spec.version       = GetHead::VERSION
  spec.authors       = ["HeeL"]
  spec.email         = ["parizhskiy@gmail.com"]
  spec.summary       = %q{Middleware that helps you to distinguish between HEAD and GET requests.}
  spec.description   = %q{Middleware that helps you to distinguish between HEAD and GET requests.
                          At the moment Rails treats these two requests equally in production mode
                          when you have perform_caching option in environment.rb set to true.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
