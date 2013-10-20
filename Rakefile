#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'bundler/setup'
require 'cane/rake_task'
require 'rspec/core/rake_task'
require 'tailor/rake_task'

Cane::RakeTask.new(:quality) do |t|
  t.canefile = './.cane'
end

RSpec::Core::RakeTask.new(:spec)

Tailor::RakeTask.new do |task|
  task.file_set 'lib/**/*.rb', :code do |style|
    style.max_line_length 160, level: :warn
  end
  task.file_set 'spec/**/*.rb', :specs do |style|
    style.max_line_length 160, level: :warn
  end
end

desc "Find notes in code"
task :notes do
  puts `grep --exclude=Rakefile -r 'OPTIMIZE:\\|FIXME:\\|TODO:' .`
end

task :test => [:tailor, :spec, :quality]

task :default => :test
