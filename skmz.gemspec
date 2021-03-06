# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skmz/version'

Gem::Specification.new do |spec|
  spec.name          = "skmz"
  spec.version       = Skmz::VERSION
  spec.authors       = ["Ryoji Yoshioka"]
  spec.email         = ["yoshioka.ryoji@gmail.com"]
  spec.description   = %q{Skmz is a Rails engine that shows the schemas.}
  spec.summary       = %q{Skmz is a Rails engine that shows the schemas.}
  spec.homepage      = "https://github.com/ryog/skmz"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "coffee-rails"
  spec.add_dependency "rails", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "sqlite3"
end
