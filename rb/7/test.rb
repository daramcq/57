#!/usr/bin/ruby -w

require_relative "room.rb"
require "test/unit"

class TestConverter < Test::Unit::TestCase
  def test_sq_ft_to_sq_m
    calc = AreaCalculator.new(15, 20, 'feet')
    assert_equal(calc.square_metres, 27.871)
  end

  def test_sq_m_to_sq_ft
    calc = AreaCalculator.new(10, 3, 'metres')
    assert_equal(calc.square_metres, 30)
    assert_equal(calc.square_feet, 322.917)
  end
end
