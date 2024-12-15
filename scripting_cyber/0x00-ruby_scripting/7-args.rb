#!/usr/bin/env ruby
def print_arguments
  num = 0
  if ARGV.length > 0
    puts "Arguments:"
    ARGV.each do |entry|
      num += 1
      puts "#{num}. #{ARGV[num - 1]}"
    end
  else
    puts "No arguments provided."
  end
end