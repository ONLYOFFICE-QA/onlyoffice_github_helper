# frozen_string_literal: true

require 'octokit'
require 'yaml'
require_relative 'github_client/branches'
require_relative 'github_client/file_list'
require_relative 'github_client/tags'

module OnlyofficeGithubHelper
  # Basic github client
  class GithubClient
    include Branches
    include FileList
    include Tags

    def initialize(config_file: 'config.yml',
                   user: nil,
                   password: nil)
      @user_name = user
      @user_password = password
      init_github_access(config_file)
      Octokit.configure do |c|
        c.login = @user_name
        c.password = @user_password
      end
      Octokit.auto_paginate = true
    end

    private

    def init_github_access(config)
      return if @user_name && @user_password

      @user_name = ENV.fetch('GITHUB_USER_NAME', 'unknown_user')
      @user_password = ENV.fetch('GITHUB_USER_PASSWORD', 'unknown_password')
      return unless File.exist?(config)

      @config = YAML.load_file(config)
      @user_name = @config['github_user']
      @user_password = @config['github_user_password']
    end
  end
end
