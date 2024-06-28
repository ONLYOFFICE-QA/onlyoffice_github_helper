# Change log

## Unreleased (master)

## 1.4.0 (2024-06-28)

### New Features

* Add `dependabot` check for `GitHub Actions`
* Add `ruby-3.3` in CI

### Fixes

* Fix rspec issues found by upgrade to `rubocop-rspec-3.0.1`

### Changes

* Extract `rubocop` CI task to separate job
* Allow v9 of `octokit` as dependency

## 1.3.0 (2023-11-24)

### New Features

* Add `ruby-3.2` in CI

### Changes

* Drop support of `ruby-2.7`, since it's EOL'ed

## 1.2.0 (2022-10-26)

### Changes

* Allow usage of `octokit` gem 6.0.0 and newer

## 1.1.0 (2022-10-11)

### New Features

* Add `faraday-retry` gem as dependency to allow automatic retries

## 1.0.0 (2022-07-14)

### New Features

* Add `yamllint` check in CI
* Add `ruby-3.1` to CI

### Fixes

* Fix `markdownlint` failure because of old `nodejs` in CI

### Changes

* Require `mfa` for releasing gem
* Check `dependabot` at 8:00 Moscow time daily
* Fix `rubocop-1.28.1` code issues
* Drop support of old EOL'ed rubies (`ruby-2.5` and `ruby-2.6`)

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
