module OnlyofficeGithubHelper
  # Module for working with file list
  module FileList
    def file_list(repo, refs: 'master')
      Octokit.tree(repo, refs, recursive: true).tree
             .reject { |elem| elem.type == 'tree' }
             .map(&:path)
    end

    def file_tree(repo, refs: 'master')
      list = file_list(repo, refs: refs)
      parse_tree(list)
    end

    def parse_tree(list, path: '')
      root_tree = { path: path }
      root_tree[:children] = []
      list.each do |item|
          root_tree[:children] << { name: item, path: path }
        end
      root_tree
    end

    private

    # Check if path is a string
    # @param file_path [String] path
    # @return [True, False]
    def with_subdir?(file_path)
      file_path.include?('/')
    end
  end
end
