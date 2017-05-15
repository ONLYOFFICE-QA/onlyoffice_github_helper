module OnlyofficeGithubHelper
  # Working with branches
  module Branches
    def branches(repo)
      Octokit.branches(repo).map(&:name)
    end
  end
end
