Gem::Specification.new do |s|
    s.name          = 'github_fastforward'
    s.version       = IO.read('version.txt')
    s.license       = 'MIT'
    s.summary       = 'Github Fastforward'
    s.description   = 'Automatically Add Upstream Branch & Rebase Current Branch'
    s.homepage      = 'https://github.com/karagenit/github-fastforward'
    s.author        = 'Caleb Smith'
    s.email         = 'karagenit@outlook.com'
    s.files         = ['bin/github_fastforward']
    s.require_paths = ['bin/']
    s.executables   << 'github_fastforward'
    s.platform      = Gem::Platform::RUBY

    s.add_runtime_dependency     'octokit',                     '~> 4.7'
    s.add_development_dependency 'github_changelog_generator',  '~> 1.14'
    s.add_development_dependency 'rubocop',                     '~> 0.49'
    s.add_development_dependency 'bundler',                     '~> 1.15'
    s.add_development_dependency 'rake',                        '~> 12.0'
end
