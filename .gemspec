Gem::Specification.new do |s|
    s.name          = 'github-fastforward'
    s.version       = '0.0.0'
    s.license       = 'MIT'
    s.summary       = 'Github Fastforward'
    s.description   = 'Automatically Add Upstream Branch & Rebase Current Branch'
    s.homepage      = 'https://github.com/karagenit/github-fastforward'
    s.author        = 'Caleb Smith'
    s.email         = 'karagenit@outlook.com'
    s.files         = ['bin/ff.rb']
    s.require_paths = ['bin/']
    s.platform      = Gem::Platform::RUBY

    s.add_development_dependency 'bundler',     '~> 1.15'
    s.add_development_dependency 'rake',        '~> 12.0'
end
