# My local development Guardfile.
# Start it up with:
#   $ guard
# It will watch files changing and execute tests where necessary.
# More info at https://github.com/guard/guard#readme

guard :cane do
  watch(/.*\.rb/)
end

guard 'rake', :task => 'tailor' do
  watch(/.*\.rb/)
end

guard :rspec do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end
