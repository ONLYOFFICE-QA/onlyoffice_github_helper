require 'spec_helper'

describe OnlyofficeGithubHelper::Branches do
  let(:github) { OnlyofficeGithubHelper::GithubClient.new }

  it 'Check that branches is a array' do
    expect(github.branches('ONLYOFFICE/sdkjs')).is_a?(Array)
  end

  it 'Check that branches include master' do
    expect(github.branches('ONLYOFFICE/sdkjs')).to include('master')
  end
end
