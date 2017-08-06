#!/usr/bin/env ruby

require "rubygems"
require "bundler/setup"
require "upstream"

parent = "upstream"
repo = `git config --get remote.origin.url`.sub('https://github.com/', '').chomp

unless `git remote`.include? parent

    puts "Adding remote #{parent}..."

    url = get_upstream(repo)

    if url == nil
        puts "Not a fork!"
        exit
    end

    `git remote add #{parent} #{url}`
end

branch = `git rev-parse --abbrev-ref HEAD`.chomp

`git fetch #{parent} #{branch}`

`git rebase #{parent}/#{branch} #{branch}`
