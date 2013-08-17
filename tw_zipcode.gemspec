# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tw_zipcode/version'

Gem::Specification.new do |spec|
  spec.name          = "tw_zipcode"
  spec.version       = TwZipcode::VERSION
  spec.authors       = ["Gary Lai"]
  spec.email         = ["garylai1990@gmail.com"]
  spec.description   = %q{Provide taiwan's zipcode selector}
  spec.summary       = %q{This is a jquery plugin for Taiwan's zipcode selector}
  spec.homepage      = "https://github.com/garylai1990/tw_zipcode"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 3.1"
  spec.add_dependency "jquery-rails"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
