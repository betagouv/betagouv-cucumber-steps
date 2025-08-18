# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "cucumber/rake/task"

RSpec::Core::RakeTask.new(:spec)

Cucumber::Rake::Task.new(:cucumber) do |task|
  task.cucumber_opts = [
    "--require",
    "test/support",
    "test/features/",
    "--publish-quiet"
  ]
end

require "rubocop/rake_task"

RuboCop::RakeTask.new

desc "Run all tests"
task test: %i[spec cucumber]

task default: %i[spec rubocop]
