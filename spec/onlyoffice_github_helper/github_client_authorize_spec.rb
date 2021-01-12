# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::GithubClient, '#authorize' do
  it 'GithubClient can be authorized via user and password' do
    expect(described_class.new(user: 'foo', password: 'bar')).to be_a(described_class)
  end

  it 'GithubClient can be authorized via fake config file' do
    expect(described_class.new(config_file: 'foo.bar')).to be_a(described_class)
  end
end
