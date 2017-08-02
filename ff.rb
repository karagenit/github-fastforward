#!/usr/bin/env ruby

require "net/http"
require "uri"
require "json"

parent = "upstream"
repo = `git config --get remote.origin.url`.sub(/https:\/\/github.com\//, '').chomp

unless `git branch`.include? parent

    uri = URI.parse(URI.encode("https://api.github.com/repos/#{repo}")) #TODO i think encode is only necessary w/o repo.chomp
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri.request_uri)

    data = http.request(request).body

    puts JSON.pretty_generate(JSON.parse(data))

    parent = JSON.parse(data)['parent']

    puts parent

    exit

    `git remote add #{parent} #{url}`
end

branch = `git rev-parse --abbrev-ref HEAD`.chomp

`git fetch #{parent} #{branch}`

`git rebase #{parent}/#{branch} #{branch}`
