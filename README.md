# Github Fast Forward

Automatically Add Upstream Branch & Rebase Current Branch

[![Travis CI](https://img.shields.io/travis/karagenit/github-fastforward.svg?style=flat-square)](https://travis-ci.org/karagenit/github-fastforward)
[![Gem Version](https://img.shields.io/gem/v/github_fastforward.svg?style=flat-square)](https://rubygems.org/gems/github_fastforward)
[![Gem](https://img.shields.io/gem/dt/github_fastforward.svg?style=flat-square)](https://rubygems.org/gems/github_fastforward)

## Installation

`gem install github_fastforward`

Will install the `octokit` gem if not already present.

### Developers

First, fork this repo on github, then:

```
$ git clone https://github.com/#{user}/github-fastforward
```

To fetch development dependencies:

```
$ bundle install
```

This will download `rake`, `bundler`, `rubocop`, and `github_changelog_generator`. 

## Usage

To check for a remote upstream & to fetch/rebase to it:

```
$ github_fastforward
```

For an authentication prompt:

```
$ github_fastforward -a
Username: #{github username}
Password: #{github password}
```

For authentication via command line:

```
$ github_fastforward -u ${username} -p ${password}
```

or:

```
$ github_fastforward -t ${oauth_token}
```
