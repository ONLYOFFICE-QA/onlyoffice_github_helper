# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::GithubClient, '#parse_tree' do
  it 'parse tree name extension in subdir' do
    parsed = github.parse_tree(['b/file2.rb'])
    expect(parsed[:children][0][:children][0][:name]).to eq('file2.rb')
  end
end
