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
      root_tree = { name: path }
      root_tree[:children] = []
      list.each do |item|
        if with_subdir?(item)
          subdir = subdir_name(item)
          root_tree[:children] << parse_tree(subdir_content(list, subdir), path: subdir)
        else
          root_tree[:children] << { name: item }
        end
      end
      root_tree
    end

    private

    # Check if path is a string
    # @param file_path [String] path
    # @return [True, False]
    def with_subdir?(file_path)
      Pathname.new(file_path).dirname.to_s != '.'
    end

    def subdir_content(list, dir)
      subdir_list = []
      list.each do |item|
        subdir_list << item.delete("#{dir}/") if item.start_with?("#{dir}/")
      end
      subdir_list
    end

    def subdir_name(path)
      Pathname.new(path).dirname.to_s
    end
  end
end
