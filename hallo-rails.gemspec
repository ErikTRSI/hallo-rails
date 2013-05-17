# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hallo/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "hallo-rails"
  spec.version       = Hallo::Rails::VERSION
  spec.authors       = ["Jan Jones"]
  spec.email         = ["jan.jones@oozou.com"]
  spec.description   = %q{Use Hallo in-place rich text editor for Rails.}
  spec.summary       = %q{Use Hallo in-place rich text editor for Rails.}
  spec.homepage      = "https://github.com/oozou/hallo-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rangy-rails"
end
