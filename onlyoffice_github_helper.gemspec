# frozen_string_literal: true

require_relative 'lib/onlyoffice_github_helper/name'
require_relative 'lib/onlyoffice_github_helper/version'

Gem::Specification.new do |s|
  s.name = OnlyofficeGithubHelper::Name::STRING
  s.version = OnlyofficeGithubHelper::Version::STRING
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.5'
  s.authors = ['ONLYOFFICE', 'Pavel Lobashov']
  s.email = %w[shockwavenn@gmail.com]
  s.summary = 'Github Helper Gem'
  s.description = 'Github Helper Gem for ONLYOFFICE QA'
  s.homepage = "https://github.com/onlyoffice-testing-robot/#{s.name}"
  s.metadata = {
    'bug_tracker_uri' => "#{s.homepage}/issues",
    'changelog_uri' => "#{s.homepage}/blob/master/CHANGELOG.md",
    'documentation_uri' => "https://www.rubydoc.info/gems/#{s.name}",
    'homepage_uri' => s.homepage,
    'source_code_uri' => s.homepage
  }
  s.files = Dir['lib/**/*']
  s.license = 'AGPL-3.0'
  s.add_runtime_dependency('octokit', '~> 4')
  s.add_development_dependency('rake', '~> 13.0')
end
