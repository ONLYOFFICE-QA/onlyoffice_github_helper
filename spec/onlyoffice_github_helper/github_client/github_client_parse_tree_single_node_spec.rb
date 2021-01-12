# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::GithubClient, '#parse_tree_single_node' do
  let(:parsed) { github.parse_tree(['a/file1', 'a/file2']) }

  it 'parsed child length is correct' do
    expect(parsed[:children].length).to eq(1)
  end

  it 'first child name is correct' do
    expect(parsed[:children][0][:name]).to eq('a')
  end

  it 'first child and its child name is correct' do
    expect(parsed[:children][0][:children][0][:name]).to eq('file1')
  end

  it 'first child and its second child name is correct' do
    expect(parsed[:children][0][:children][1][:name]).to eq('file2')
  end
end
