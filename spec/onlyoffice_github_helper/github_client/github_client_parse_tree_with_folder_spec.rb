# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::GithubClient, '#parse_tree_with_folder' do
  let(:parsed) { github.parse_tree(['a/a/a.rb']) }

  it 'correct root name' do
    expect(parsed[:children][0][:name]).to eq('a')
  end

  it 'correct first child name' do
    expect(parsed[:children][0]\
                 [:children][0][:name]).to eq('a')
  end

  it 'correct file name' do
    expect(parsed[:children][0]\
                 [:children][0]\
                 [:children][0][:name]).to eq('a.rb')
  end
end
