# Github Fast Forward

Automatically Add Upstream Branch & Rebase Current Branch

## Building

Requires Octokit ~> 4.7

If you wish to use `rake publish`, you need to install `github_changelog_generator`. 

### Notes

You can add a git repo as a dependency to your `Gemfile` and it will be fetched when `bundle install` is run. However, the gem isn't installed like a normal gem, and when you run `gem build .gemspec` the util that was built won't really work because your repo won't be found by `require` - probably because you need to list the repo in the `.gemspec` but I have no idea how to do this...

Basically, Gemfiles are useful for fetching dependencies when you are working in a repo/project - e.g., it allows you to use a git repo as a gem source for development purposes. The gemspec file doesn't have this feature - when you build & install the gem it uses the gemspec dependencies to make sure the proper gems are installed before producing an installable gem. 
