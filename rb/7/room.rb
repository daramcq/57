#!/usr/bin/ruby -w

require "../shared/input.rb"


CONVERSION_FACTOR = 0.09290304
DECIMAL_PLACES = 3
UNIT_MAPPING = { 'm' => 'metres', 'ft' => 'feet' }
OPERATORS = { 'metres' => :*, 'feet' => :/ }

class AreaCalculator

  def initialize(length_value, width_value, unit_type)
    @length_value = length_value
    @width_value = width_value
    @unit_value = unit_type
    @sq_value = @length_value * @width_value
  end

  def convert(endpoint)
    operator = OPERATORS[endpoint]
    raw = @sq_value.method(operator).call(CONVERSION_FACTOR)
    return raw.round(DECIMAL_PLACES)
  end

  def square_metres
    if @unit_value == 'metres'
      return @sq_value
    else
      return convert('metres')
    end
  end

  def square_feet
    if @unit_value == 'feet'
      return @sq_value
    else
      return convert('feet')
    end
  end  
end


def choose_unit(input)
  print ""
end



if __FILE__ == $0

  print "Choose your input units: ['m'/'ft'] "
  units = gets.strip
  puts units
  unit_type = UNIT_MAPPING[units]

  print "\nWhat is the length of the room in #{unit_type}? "
  length = get_number_input()

  print "\nWhat is the width of the room in #{unit_type}? "
  width = get_number_input()

  print "\nYou entered dimensions of #{length} #{unit_type} by #{width} #{unit_type}."

  area_calculator = AreaCalculator.new(length, width, unit_type)
  print "\nThe area is:"
  print "\n#{area_calculator.square_feet} square feet"
  print "\n#{area_calculator.square_metres} square metres\n"
end
