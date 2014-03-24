# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rinxter_api/version'

# require File.expand_path('../lib/rinxter_api/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'rinxter_api'
  spec.summary       = %q(A Ruby API Client wrapping Rinxter Data API calls)
  spec.description   = %q(A nifty client to interact with the Rinxter data source for Roller Derby statistics)
  spec.version       = RinxterApi::VERSION
  spec.license       = 'MIT'
  spec.homepage      = 'http://miketheman.github.io/rinxter_api'

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'httparty', '~> 0.13.0'

  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.19.1'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'yard'

  spec.authors       = ['Mike Fiedler']
  spec.email         = ['miketheman@gmail.com']
end
