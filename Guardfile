# My local development Guardfile.
# Start it up with:
#   $ guard
# It will watch files changing and execute tests where necessary.
# More info at https://github.com/guard/guard#readme

guard :rspec, all_on_start: true do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { 'spec' }
end

guard :rubocop do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end

guard :yard, port: '8808' do
  watch(%r{lib/.+\.rb})
end
