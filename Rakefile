task :default => [:build, :install]

task :build do
    system "bundle install"
    system "gem build .gemspec"
end

task :install do
    system "gem install github-fastforward-0.0.0.gem"
end

task :clean do
    system "gem uninstall github-fastforward-0.0.0.gem"
end
