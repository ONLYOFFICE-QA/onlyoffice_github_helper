# frozen_string_literal: true

require_relative 'lib/onlyoffice_github_helper'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Release gem '
task :release_github_rubygems do
  Rake::Task['release'].invoke
  gem_name = "pkg/#{OnlyofficeGithubHelper::Name::STRING}-"\
              "#{OnlyofficeGithubHelper::Version::STRING}.gem"
  sh('gem push --key github '\
   '--host https://rubygems.pkg.github.com/onlyoffice-testing-robot '\
   "#{gem_name}")
end
