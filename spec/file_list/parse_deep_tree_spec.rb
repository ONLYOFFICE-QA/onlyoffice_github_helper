# frozen_string_literal: true

require 'spec_helper'

describe 'parse_tree' do
  it 'parse deep level tree' do
    parsed = github.parse_tree(['a/b/file1'])
    expect(parsed[:children][0][:name]).to eq('a')
    expect(parsed[:children][0]\
                 [:children][0][:name]).to eq('b')
    expect(parsed[:children][0]\
                 [:children][0]\
                 [:children][0][:name]).to eq('file1')
  end

  it 'parse tree with folder like file name' do
    parsed = github.parse_tree(['a/a/a.rb'])
    expect(parsed[:children][0][:name]).to eq('a')
    expect(parsed[:children][0]\
                 [:children][0][:name]).to eq('a')
    expect(parsed[:children][0]\
                 [:children][0]\
                 [:children][0][:name]).to eq('a.rb')
  end
end
