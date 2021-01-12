# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

require 'onlyoffice_github_helper'

RSpec.shared_context 'with github_client', shared_context: :metadata do
  let(:github) { OnlyofficeGithubHelper::GithubClient.new }
end

RSpec.configure do |rspec|
  rspec.include_context 'with github_client'
end
