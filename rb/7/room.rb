#!/usr/bin/ruby -w

require "../shared/input.rb"


CONVERSION_FACTOR = 0.09290304
DECIMAL_PLACES = 3

def convert_sq_ft_to_sq_m(sq_ft_value, decimal_places)
  return (sq_ft_value * CONVERSION_FACTOR).round(decimal_places)
end


if __FILE__ == $0
  print "What is the length of the room in feet? "
  length = get_number_input()
  print "\nWhat is the width of the room in feet? "
  width = get_number_input()
  print "\nYou entered dimensions of #{length} feet by #{width} feet."
  area_sq_ft = length * width
  area_sq_m = convert_sq_ft_to_sq_m(area_sq_ft, DECIMAL_PLACES)
  print "\nThe area is:"
  print "\n#{area_sq_ft} square feet"
  print "\n#{area_sq_m} square metres\n"
end
