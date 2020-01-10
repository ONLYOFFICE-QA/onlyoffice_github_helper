# frozen_string_literal: true

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
      childs = tree_childs(list)
      childs[:dirs].each do |child_item|
        sub_files = subdir_content(list, child_item)
        root_tree[:children] << parse_tree(sub_files, path: child_item)
      end
      root_tree[:children] << childs[:files]
      root_tree[:children].flatten!
      root_tree
    end

    private

    def tree_childs(list)
      childs = []
      child_dirs = []
      list.each do |entry|
        if with_subdir?(entry)
          child_dirs << subdir_name(entry)
        else
          childs << { name: entry }
        end
      end
      { files: childs, dirs: child_dirs.uniq }
    end

    # Check if path is a string
    # @param file_path [String] path
    # @return [True, False]
    def with_subdir?(file_path)
      Pathname.new(file_path).dirname.to_s != '.'
    end

    def subdir_content(list, dir)
      subdir_list = []
      list.each do |item|
        subdir_list << item.sub("#{dir}/", '') if item.start_with?("#{dir}/")
      end
      subdir_list
    end

    def subdir_name(path)
      Pathname(path).each_filename.to_a[0]
    end
  end
end
