# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end
require 'onlyoffice_github_helper'

RSpec.shared_context 'with github_client', shared_context: :metadata do
  let(:github) { OnlyofficeGithubHelper::GithubClient.new }
end

RSpec.configure do |rspec|
  rspec.include_context 'with github_client'
end
