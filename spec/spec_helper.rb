require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start do
  add_filter '/spec/'
  project_name 'Rinxter API Ruby Client Library'
end

require 'rspec'
require 'vcr'
require 'webmock/rspec'

# Include our code
require 'rinxter_api'

# Load any custom RSpec matchers
Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each { |f| require f }

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run_including :focus
  config.filter_run_excluding :wip

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/support/cassettes'
  c.configure_rspec_metadata!
  c.default_cassette_options = {
    record: :new_episodes,
    re_record_interval: 2_592_000 # 30 days, in seconds
  }
  c.hook_into :webmock

  # Remove any test-specific data
  c.before_record do |i|
    i.response.headers.delete('Date')
    i.response.headers.delete('Set-Cookie')
  end
end
