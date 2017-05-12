module OnlyofficeGithubHelper
  # Basic github client
  module Branches
    def branches(repo)
      Octokit.branches(repo).map(&:name)
    end
  end
end
