#!/usr/bin/env ruby
def print_arguments
  num = 0
  ARGV.each do |entry|
    num += 1
    puts "#{num}. #{ARGV[num - 1]}"
  end
end