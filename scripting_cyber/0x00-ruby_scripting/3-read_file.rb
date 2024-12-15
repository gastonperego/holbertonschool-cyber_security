#!/usr/bin/env ruby
require "json"

def count_user_ids(path)
  data = File.read(path)
  json = JSON.parse(data)
  user_id_counts = Hash.new(0)
  json.each do |entry|
    user_id_counts[entry['userId']] += 1
  end
  user_id_counts.each do |userId, count|
    puts "#{userId}: #{count}"
  end
end