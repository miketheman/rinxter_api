#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'bundler/setup'
require 'rake/clean'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

CLEAN.include %w(.yardoc coverage doc pkg tmp)

RSpec::Core::RakeTask.new(:spec)

Rubocop::RakeTask.new(:style)

YARD::Rake::YardocTask.new(:doc)

desc 'Show undocumented objects'
task 'doc:undoc' do
  YARD::CLI::Stats.run('--list-undoc')
end

desc 'Find notes in code'
task :notes do
  puts `grep --exclude=Rakefile -ir 'OPTIMIZE:\\|FIXME:\\|TODO:' lib`
end

desc 'Run the full suite. Only completes if all pass.'
task full: [:clean, :test, :doc, :notes]

task test: [:style, :spec]

task default: :test
