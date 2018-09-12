#!/usr/bin/ruby -w

def length_message(string)
  return "#{string} has #{string.length} characters."
end

print "What is the input string? "
string = gets.strip
while string.length == 0
  print "Please enter a string! "
  string = gets.strip
end
puts length_message(string)

