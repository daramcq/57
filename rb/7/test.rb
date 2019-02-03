#!/usr/bin/ruby -w

require_relative "room.rb"
require "test/unit"

class TestConverter < Test::Unit::TestCase
  def test_conversion
    assert_equal(convert_sq_ft_to_sq_m(300, 3), 27.871)
  end
end
