task :default => [:clean, :build, :install]

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

task :publish do
    puts "Current Version: " + IO.read('version.txt')
    print "New Version: "
    vers = STDIN.gets.chomp
    IO.write('version.txt', vers)
    system "rake build"
    system "git commit -am \"Update Version\""
    system "git tag -a v" + vers + " -m \"\""
end
