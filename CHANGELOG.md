# Change log

## Unreleased (master)

## 0.1.0 (2020-03-19)

### New Features

* Store folders before files in `file_tree`
* Minimal supported ruby is 2.3
* Added `GithubClient.new` `user` and `password` params
* Require `codecov` only in CI environments
* Cleanup `gemspec` file
* Make `rake` development dependency
* Add rake task to release gem on github

### Fixes

* Correctly handle more than 30 branches\tags
* Correctly handle if file name starts same as folder name
