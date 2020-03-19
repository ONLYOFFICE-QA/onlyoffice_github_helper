# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::GithubClient, '#parse_tree' do
  describe 'parse basic same level list' do
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

  it 'parse tree name extension in subdir' do
    parsed = github.parse_tree(['b/file2.rb'])
    expect(parsed[:children][0][:children][0][:name]).to eq('file2.rb')
  end

  describe 'parse basic diff level list' do
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

  describe 'parse several file withing single node' do
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
end
