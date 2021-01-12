# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::GithubClient, '#parse_tree_same_level' do
  let(:parsed) { github.parse_tree(%w[file1 file2]) }

  it 'parsed child length is correct' do
    expect(parsed[:children].length).to eq(2)
  end

  it 'first child name is correct' do
    expect(parsed[:children][0][:name]).to eq('file1')
  end

  it 'second child name is correct' do
    expect(parsed[:children][1][:name]).to eq('file2')
  end
end
