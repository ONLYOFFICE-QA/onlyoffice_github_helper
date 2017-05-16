require 'spec_helper'

describe 'parse_tree' do
  let(:github) { OnlyofficeGithubHelper::GithubClient.new }

  it 'parse basic same level list' do
    parsed = github.parse_tree(['file1', 'file2'])
    expect(parsed[:children].length).to eq(2)
    expect(parsed[:children][0][:name]).to eq('file1')
    expect(parsed[:children][1][:name]).to eq('file2')
  end

  it 'parse basic diff level list' do
    parsed = github.parse_tree(['file1', 'b/file2'])
    expect(parsed[:children].length).to eq(2)
    expect(parsed[:children][0][:name]).to eq('file1')
    expect(parsed[:children][1][:name]).to eq('b')
    expect(parsed[:children][1][:children][0][:name]).to eq('file2')
  end

  it 'parse several file withing single node' do
    parsed = github.parse_tree(['a/file1', 'a/file2'])
    expect(parsed[:children].length).to eq(1)
    expect(parsed[:children][0][:name]).to eq('a')
    expect(parsed[:children][0][:children][0][:name]).to eq('file1')
    expect(parsed[:children][0][:children][1][:name]).to eq('file2')
  end
end