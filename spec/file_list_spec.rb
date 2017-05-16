require 'spec_helper'

describe OnlyofficeGithubHelper::FileList, include_shared: true do
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
end
