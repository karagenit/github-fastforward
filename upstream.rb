#!/usr/bin/env ruby

require "net/http"
require "uri"
require "json"

def get_upstream(repo)

    raise ArgumentError, "Invalid Repo", caller unless repo =~ /\A[A-Za-z0-9.-]+\/[A-Za-z0-9.-]+\z/

    uri = URI.parse("https://api.github.com/repos/#{repo}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri.request_uri)

    body = http.request(request).body

    data = JSON.parse(body)['parent']

    if data == nil
        return nil
    end

    return data['html_url']
end

if __FILE__ == $0
    puts get_upstream(ARGV[0])
end
