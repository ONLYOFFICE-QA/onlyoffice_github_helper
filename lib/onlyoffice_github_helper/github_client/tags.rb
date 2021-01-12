# frozen_string_literal: true

module OnlyofficeGithubHelper
  # Working with tags
  module Tags
    # Get list of tags in repo
    # @param [String] repo to check
    # @return [Array<String>] list of tags
    def tags(repo)
      Octokit.tags(repo).map(&:name)
    end
  end
end
