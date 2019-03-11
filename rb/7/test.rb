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
    assert_equal(30, calc.square_metres)
    assert_equal(322.917, calc.square_feet)
  end

  def test_invalid_unit_type
    assert_raise TypeError do
      AreaCalculator.new(10, 3, 'blah')
    end
  end

  def test_valid_unit_types
    assert AreaCalculator.new(1, 1, 'm')
    assert AreaCalculator.new(1, 1, 'metres')
    assert AreaCalculator.new(1, 1, 'ft')
    assert AreaCalculator.new(1, 1, 'feet')
  end
end
