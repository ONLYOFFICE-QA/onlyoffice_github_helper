module OnlyofficeGithubHelper
  # Module for working with file list
  module FileList
    def file_list(repo, refs: 'master')
      Octokit.tree(repo, refs, recursive: true).tree
             .reject { |elem| elem.type == 'tree' }
             .map(&:path)
    end
  end
end
