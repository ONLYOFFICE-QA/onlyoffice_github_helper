require 'spec_helper'

describe OnlyofficeGithubHelper::FileList do
  let(:github) { OnlyofficeGithubHelper::GithubClient.new }

  it 'Check that file list is returned' do
    expect(github.file_list('ONLYOFFICE/ooxml_parser')).is_a?(Array)
  end

  it 'Check that file list not contains folders by itself' do
    expect(github.file_list('ONLYOFFICE/ooxml_parser'))
      .not_to include('lib')
  end

  it 'Check that file contain deep item' do
    expect(github.file_list('ONLYOFFICE/ooxml_parser'))
      .to include('lib/ooxml_parser/version.rb')
  end

  it 'Check that file list contains folders' do
    expect(github.file_list('ONLYOFFICE/ooxml_parser'))
      .to include('lib/')
  end
end
