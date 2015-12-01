#!/usr/bin/env ruby

# url rewriter for rubygems squid proxy

STDOUT.sync = true

while line = gets
  url = line.split(' ')[0]

  response = ''
  if url.include?("https://rubygems.org/gems/")
    response = "302:" + url.gsub('https://rubygems.org/', 'https://production.cf.rubygems.org/')
  end

  puts response
end
