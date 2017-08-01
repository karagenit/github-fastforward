#!/usr/bin/env ruby

parent = "upstream"

unless `git branch`.include? parent

    print "Parent URL: "
    url = gets.chomp

    `git remote add #{parent} #{url}`
end

branch = `git rev-parse --abbrev-ref HEAD`.chomp

`git fetch #{parent} #{branch}`

`git rebase #{parent}/#{branch} #{branch}`
