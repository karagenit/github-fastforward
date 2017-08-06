#!/usr/bin/env ruby

require "net/http"
require "uri"
require "json"

parent = "upstream"
repo = `git config --get remote.origin.url`.sub(/https:\/\/github.com\//, '').chomp

unless `git remote`.include? parent

    puts "Adding remote #{parent}..."

    uri = URI.parse("https://api.github.com/repos/#{repo}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri.request_uri)

    data = http.request(request).body

    pdata = JSON.parse(data)['parent']

    if pdata == nil
        puts "Not a fork!"
        exit
    end

    url = pdata['html_url']

    `git remote add #{parent} #{url}`
end

branch = `git rev-parse --abbrev-ref HEAD`.chomp

`git fetch #{parent} #{branch}`

`git rebase #{parent}/#{branch} #{branch}`
