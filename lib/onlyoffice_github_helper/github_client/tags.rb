# frozen_string_literal: true

module OnlyofficeGithubHelper
  # Working with tags
  module Tags
    def tags(repo)
      Octokit.tags(repo).map(&:name)
    end
  end
end
