#!/usr/bin/env ruby
require 'net/http'
require 'json'
require 'uri'

def post_request(url, body_params)
  uri = URI(url)
  res = Net::HTTP.post_form(uri, body_params)
  puts "Response status: #{res.code} #{res.message}"
  puts "Response body:
#{res.body}"
end