# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::GithubClient, '#parse_tree_basic_diff_level' do
  let(:parsed) { github.parse_tree(['file1', 'b/file2']) }

  it 'parsed child length is correct' do
    expect(parsed[:children].length).to eq(2)
  end

  it 'first child name is correct' do
    expect(parsed[:children][0][:name]).to eq('b')
  end

  it 'first child and its child name is correct' do
    expect(parsed[:children][0][:children][0][:name]).to eq('file2')
  end

  it 'second child name is correct' do
    expect(parsed[:children][1][:name]).to eq('file1')
  end
end
