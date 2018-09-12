#!/usr/bin/ruby -w


def hello(name)
     return 'Hello, ' + name + ', nice to meet you!'
end


print "What's your name? "
name = gets.strip
puts hello(name)
