# Github Fast Forward

Automatically Add Upstream Branch & Rebase Current Branch

### Using Git Dependencies

You can add a git repo as a dependency to your `Gemfile` and it will be fetched when `bundle install` is run. However, the gem isn't installed like a normal gem, and when you run `gem build .gemspec` the util that was built won't really work because your repo won't be found by `require` - probably because you need to list the repo in the `.gemspec` but I have no idea how to do this...
