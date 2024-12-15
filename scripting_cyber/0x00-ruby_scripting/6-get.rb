#!/usr/bin/env ruby
require 'net/http'

def get_request(url)
  uri = URI(url)
  data = Net::HTTP.get_response(uri)
  puts "Response status: #{data.code} #{data.message}"
  puts "Response body:
#{data.body}"
end