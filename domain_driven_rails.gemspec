# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'domain_driven_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "domain_driven_rails"
  spec.version       = DomainDrivenRails::VERSION
  spec.authors       = ["Mark Windholtz"]
  spec.email         = ["mark@agiledna.com"]
  spec.summary       = %q{Domain Driven Rails provides Rails hooks for the gem domain_driven}
  spec.description   = %q{Domain Driven Rails provides Rails abstract classes and generators to support for a Domain Driven Design}
  spec.homepage      = "https://github.com/mwindholtz/domain_driven_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rails", '~> 4.0.2'
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'rspec-given' 
  spec.add_runtime_dependency     'interactor'
  spec.add_runtime_dependency     'pundit'
  spec.add_runtime_dependency     'activerecord'
  spec.add_runtime_dependency     'domain_driven'
    
end
