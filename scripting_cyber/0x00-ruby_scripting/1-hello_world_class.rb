#!/usr/bin/env ruby
class HelloWorld
    def initialize
        @message = "Hello, World!"  # Instance variable: persists in the object
    end
        
    def print_hello
        puts @message
    end
end