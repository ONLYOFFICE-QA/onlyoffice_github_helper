# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov
require 'onlyoffice_github_helper'

RSpec.shared_context 'github_client', shared_context: :metadata do
  let(:github) { OnlyofficeGithubHelper::GithubClient.new }
end

RSpec.configure do |rspec|
  rspec.include_context 'github_client', include_shared: true
end
