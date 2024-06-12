# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeGithubHelper::Branches do
  it 'Check that branches is a array' do
    expect(github.branches('ONLYOFFICE/sdkjs')).to be_a(Array)
  end

  it 'Check that branches include master' do
    expect(github.branches('ONLYOFFICE/sdkjs')).to include('master')
  end

  it 'Check that there is more than 30 branches' do
    expect(github.branches('twbs/bootstrap').length).to be > 30
  end
end
