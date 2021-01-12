# frozen_string_literal: true

module OnlyofficeGithubHelper
  # Working with branches
  module Branches
    # Get list of branches in repo
    # @param [String] repo to check
    # @return [Array<String>] list of branches
    def branches(repo)
      Octokit.branches(repo).map(&:name)
    end
  end
end
