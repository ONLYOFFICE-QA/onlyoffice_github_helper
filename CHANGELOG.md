# Change log

## Unreleased (master)

### New Features

* Add `yamllint` check in CI

### Fixes

* Fix `markdownlint` failure because of old `nodejs` in CI

### Changes

* Require `mfa` for releasing gem
* Check `dependabot` at 8:00 Moscow time daily

## 0.2.0 (2021-01-12)

### New Features

* Add support of `rubocop-performance` and `rubocop-rake`
* Freeze all dependencies versions in `Gemfile.lock`
* Add `markdownlint` check in CI
* Add `rubocop` check in CI
* Add `dependabot` config
* Add CI check that 100% code is documented
* Add `ruby-3.0` to CI
* Enable `branch` coverage in `simplecov`

### Changes

* Use `GitHub Actions` instead of `TravisCI`
* Require ruby 2.5, since older one are EOL'ed
* Drop support of older rubies in CI
* Add missing documentation
* Use `rake` `sh` command for releasing gem
* Move repo to `ONLYOFFICE-QA` org
* CI check use config file, instead of direct env access
* Test coverage is 100%
* Remove support of `codecov`

## 0.1.1 (2020-03-19)

### Fixes

* Fix posting gem to Github Packages

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
