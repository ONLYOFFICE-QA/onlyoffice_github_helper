# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::Tags, include_shared: true do
  it 'Check that tags is a array' do
    expect(github.tags('ONLYOFFICE/ooxml_parser')).is_a?(Array)
  end

  it 'Check that tags include master' do
    expect(github.tags('ONLYOFFICE/ooxml_parser')).to include('v0.2.0')
  end
end
