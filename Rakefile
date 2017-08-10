task :default => [:clean, :build, :test, :install]

task :build do
    sh "bundle install"
    sh "gem build .gemspec"
end

task :install do
    sh "gem install github_fastforward-" + IO.read('version.txt') + ".gem"
end

task :clean do
    system "gem uninstall github_fastforward"
    system "rm *.gem"
end

task :test do
    sh "rubocop bin/"
end

task :publish do
    puts "Current Version: " + IO.read('version.txt')
    print "New Version: "
    vers = STDIN.gets.chomp
    IO.write('version.txt', vers)
    sh "rake build"
    system "github_changelog_generator"
    system "git commit -am \"Update Version\""
    system "git tag -a v" + vers + " -m \"\""
    system "git push origin master"
    system "git push origin v" + IO.read('version.txt')
    system "gem push github_fastforward-" + IO.read('version.txt') + ".gem"
end
