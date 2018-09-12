
def write_quote(quotation, attribution)
  return "#{attribution} says, \"#{quotation}\"."
end


if __FILE__ == $0
  print "What is the quote? "
  quotation = gets.strip
  print "Who said it? "
  attribution = gets.strip

  puts write_quote(quotation, attribution)
end
