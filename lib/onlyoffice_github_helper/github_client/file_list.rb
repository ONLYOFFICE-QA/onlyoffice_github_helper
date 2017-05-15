module OnlyofficeGithubHelper
  # Module for working with file list
  module FileList
    def file_list(repo, refs: 'master')
      Octokit.tree(repo, refs, recursive: true).tree.map do |file|
        path = file.path
        path << '/' if file.type == 'tree'
        path
      end
    end
  end
end
