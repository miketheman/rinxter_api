# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rinxter_api/version', __FILE__)

Gem::Specification.new do |gem|

  gem.name          = "rinxter_api"
  gem.summary       = %q{A Ruby API Client wrapping Rinxter Data API calls}
  gem.description   = %q{A nifty client to interact with the Rinxter data source for Roller Derby statistics}
  gem.version       = RinxterApi::VERSION
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_dependency 'httparty', '~> 0.12.0'

  gem.add_development_dependency 'cane'
  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'tailor'
  gem.add_development_dependency 'yard'

  gem.authors       = ["Mike Fiedler"]
  gem.email         = ["miketheman@gmail.com"]
  gem.homepage      = "http://miketheman.github.io/rinxter_api"

end
