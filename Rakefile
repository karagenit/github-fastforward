task :default => [:build, :install]

task :build do
    system "bundle install"
    system "gem build .gemspec"
end

task :install do
    system "gem install github-fastforward-" + IO.read('version.txt') + ".gem"
end

task :clean do
    system "gem uninstall github-fastforward"
end
