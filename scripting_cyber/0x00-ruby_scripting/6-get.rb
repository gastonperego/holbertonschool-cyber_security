#!/usr/bin/env ruby
require 'net/http'

def get_request(url)
  uri = URI(url)
  data = Net::HTTP.get(uri)
  puts "#{data}"
end