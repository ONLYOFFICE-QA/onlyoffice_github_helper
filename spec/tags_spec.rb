require 'spec_helper'

describe OnlyofficeGithubHelper::Branches do
  let(:github) { OnlyofficeGithubHelper::GithubClient.new }

  it 'Check that tags is a array' do
    expect(github.tags('ONLYOFFICE/ooxml_parser')).is_a?(Array)
  end

  it 'Check that tags include master' do
    expect(github.tags('ONLYOFFICE/ooxml_parser')).to include('v0.2.0')
  end
end
