# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'onlyoffice_github_helper/version'
Gem::Specification.new do |s|
  s.name = 'onlyoffice_github_helper'
  s.version = OnlyofficeGithubHelper::Version::STRING
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3'
  s.authors = ['ONLYOFFICE', 'Pavel Lobashov']
  s.summary = 'Github Helper Gem'
  s.description = 'Github Helper Gem for ONLYOFFICE QA'
  s.email = ['shockwavenn@gmail.com']
  s.files = `git ls-files lib LICENSE.txt README.md`.split($RS)
  s.add_runtime_dependency('octokit', '~> 4')
  s.homepage = 'https://github.com/onlyoffice-testing-robot/onlyoffice_github_helper'
  s.license = 'AGPL-3.0'
end
