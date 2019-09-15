#!/usr/bin/ruby -w

require "test/unit"
require_relative "pizza.rb"

class TestPizzaSlicer < Test::Unit::TestCase

  def test_pizza_divider
    slicer = PizzaSlicer.new(2, 8, 4)
    assert_equal(slicer.serve(), 1)
  end
end
