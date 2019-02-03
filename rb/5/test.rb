#!/usr/bin/ruby -w

require_relative "simple_math.rb"
require "test/unit"

class TestSimpleMath < Test::Unit::TestCase
  def test_operation
    assert_equal(100, operation(10, 10, :*))
    assert_equal(50, operation(20, 30, :+))
    assert_equal(-5, operation(10, 15, :-))
    assert_equal(3, operation(12, 4, :/))
  end
end
                 
