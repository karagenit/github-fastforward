task :default => [:clean, :build, :install]

task :build do
    system "bundle install"
    system "gem build .gemspec"
end

task :install do
    system "gem install github_fastforward-" + IO.read('version.txt') + ".gem"
end

task :clean do
    system "gem uninstall github_fastforward"
    system "rm *.gem"
end

task :publish do
    puts "Current Version: " + IO.read('version.txt')
    print "New Version: "
    vers = STDIN.gets.chomp
    IO.write('version.txt', vers)
    system "rake build"
    system "github_changelog_generator"
    system "git commit -am \"Update Version\""
    system "git tag -a v" + vers + " -m \"\""
end
