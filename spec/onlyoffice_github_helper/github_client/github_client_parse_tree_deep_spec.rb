# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::GithubClient, '#parse_tree_deep' do
  let(:parsed) { github.parse_tree(['a/b/file1']) }

  it 'correct root name' do
    expect(parsed[:children][0][:name]).to eq('a')
  end

  it 'correct first child name' do
    expect(parsed[:children][0] \
                 [:children][0][:name]).to eq('b')
  end

  it 'correct file name' do
    expect(parsed[:children][0] \
                 [:children][0] \
                 [:children][0][:name]).to eq('file1')
  end
end
